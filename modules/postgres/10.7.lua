
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

depends_on('zlib')

prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))

prepend_path('CPATH', pathJoin(base, 'include'))
prepend_path('LIBRARY_PATH', pathJoin(base, 'lib'))


pushenv('POSTGRES_DIR', base)
pushenv('POSTGRES_LIB_DIR', pathJoin(base, 'lib'))
pushenv('POSTGRES_INC_DIR', pathJoin(base, 'include'))


