import os
import sys
import glob
from pathlib import Path, PurePath


def list_dirs(fname):
    return [f for f in os.listdir(fname) if os.path.isdir(os.path.join(fname, f))]


def is_cmake_config(app_dir):
    return len(sorted(Path(app_dir).rglob("cmake"))) > 0


def get_cmake_relpath(app_dir):
    cmake_dirs = []
    paths = sorted(Path(app_dir).rglob("*Config.cmake"))
    for path in paths:
        cmake_dirs.append((path.name[:-12], '%s' % path.parent.relative_to(app_dir)))
    paths = sorted(Path(app_dir).rglob("*-config.cmake"))
    for path in paths:
        cmake_dirs.append((path.name[:-13], '%s' % path.parent.relative_to(app_dir)))
    return cmake_dirs


def is_pkgconfig_config(app_dir):
    return len(sorted(Path(app_dir).rglob("pkgconfig"))) > 0


def get_pkgconfig_relpath(app_dir):
    paths = sorted(Path(app_dir).rglob("pkgconfig"))
    return paths[0].relative_to(app_dir)


def is_default_config(app_dir):
    return os.path.exists(os.path.join(app_dir, 'include')) or os.path.exists(os.path.join(app_dir, 'lib'))


def is_executable(app_dir):
    return os.path.exists(os.path.join(app_dir, 'bin'))


def write_base(fid):
    fid.write("local root = pathJoin(os.getenv('HOME'), 'Applications')\n")
    fid.write("local app = myModuleName()\n")
    fid.write("local version = myModuleVersion()\n")
    fid.write("local base = pathJoin(root, app, version)\n\n")


def write_executable(fid):
    fid.write("--[[  updating PATH  ]]\n")
    fid.write("prepend_path('PATH', pathJoin(base, 'bin'))\n")


def write_default_config(fid):
    fid.write("prepend_path('CPATH', pathJoin(base, 'include'))\n")
    fid.write("prepend_path('LIBRARY_PATH', pathJoin(base, 'lib'))\n")


def write_cmake_config(fid, app_dir):
    fid.write("--[[  cmake configuration  ]]\n")
    fid.write("prepend_path('CMAKE_PREFIX_PATH', base)\n")
    folders = get_cmake_relpath(app_dir)
    for folder in folders:
        fid.write("setenv('%s_DIR', '%s')\n" % folder)
    fid.write("\n")


def write_pkgconfig_config(fid, app_dir):
    fid.write("--[[  pkgconfig configuration  ]]\n")
    fid.write("prepend_path('PKG_CONFIG_PATH', pathJoin(base, '%s'))\n\n" % get_pkgconfig_relpath(app_dir))


def write_configuration(fid, app_dir):
    write_base(fid)
    if is_cmake_config(app_dir) or is_pkgconfig_config(app_dir):
        if is_cmake_config(app_dir):
            write_cmake_config(fid, app_dir)
        if is_pkgconfig_config(app_dir):
            write_pkgconfig_config(fid, app_dir)
    elif is_default_config(app_dir):
        write_default_config(fid)
    if is_executable(app_dir):
        write_executable(fid)


def write_enviroment(fid, application):
    if application == 'boost':
        pass
    elif application == 'java':
        pass


def app_version(root, output, application):
    os.mkdir(os.path.join(output, application))
    for version in list_dirs(os.path.join(root, application)):
        filename = os.path.join(output, application, "%s.lua" % version)
        if os.path.exists(filename):
            continue
        fid = open(filename, 'w')
        write_configuration(fid, os.path.join(root, application, version))
        write_enviroment(fid, application)
        fid.close()


def process_directory(root, output, excludes=[]):
    for application in [app for app in os.listdir(root) if app not in excludes]:
        app_version(root, output, application)


def process_cmd_args(args):
    if len(args) < 2:
        print('python module_gen.py <inputfile> <outputfile>')
        sys.exit(2)
    root = args[0]
    output = args[1]
    excludes = args[2:]
    process_directory(root, output, excludes)


if __name__ == "__main__":
    process_cmd_args(sys.argv[1:])
