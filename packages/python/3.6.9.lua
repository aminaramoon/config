-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2021-11-17 19:09:17.472230
--
-- python@3.6.9%gcc@9.3.0+bz2+ctypes+dbm~debug+libxml2+lzma~nis~optimizations+pic+pyexpat+pythoncmd+readline+shared+sqlite3+ssl~tix~tkinter~ucs4+uuid+zlib arch=linux-ubuntu20.04-skylake/i5sux2x
--

whatis([[Name : python]])
whatis([[Version : 3.6.9]])
whatis([[Target : skylake]])
whatis([[Short description : The Python programming language.]])
whatis([[Configure options : CPPFLAGS=-I/home/amin/applications/bzip2/1.0.8/include -I/home/amin/applications/expat/2.4.1/include -I/home/amin/applications/gdbm/1.19/include -I/home/amin/applications/gettext/0.21/include -I/home/amin/applications/libffi/3.3/include -I/home/amin/applications/ncurses/6.2/include -I/home/amin/applications/openssl/1.1.1l/include -I/home/amin/applications/readline/8.1/include -I/home/amin/applications/sqlite/3.36.0/include -I/home/amin/applications/util-linux-uuid/2.36.2/include -I/home/amin/applications/xz/5.2.5/include -I/home/amin/applications/zlib/1.2.11/include LDFLAGS=-L/home/amin/applications/bzip2/1.0.8/lib -L/home/amin/applications/expat/2.4.1/lib -L/home/amin/applications/gdbm/1.19/lib -L/home/amin/applications/gettext/0.21/lib -L/home/amin/applications/libffi/3.3/lib -L/home/amin/applications/ncurses/6.2/lib -L/home/amin/applications/openssl/1.1.1l/lib -L/home/amin/applications/readline/8.1/lib -L/home/amin/applications/sqlite/3.36.0/lib -L/home/amin/applications/util-linux-uuid/2.36.2/lib -L/home/amin/applications/xz/5.2.5/lib -L/home/amin/applications/zlib/1.2.11/lib --with-threads --without-pydebug --enable-shared --without-ensurepip --with-dbmliborder=gdbm:bdb:ndbm --with-system-expat --with-system-ffi --enable-loadable-sqlite-extensions CFLAGS=-fPIC]])

help([[The Python programming language.]])



prepend_path("LD_LIBRARY_PATH", "/home/amin/applications/python/3.6.9/lib", ":")
prepend_path("LD_LIBRARY_PATH", "/home/amin/applications/python/3.6.9/lib/python3.6", ":")
prepend_path("LD_LIBRARY_PATH", "/home/amin/applications/python/3.6.9/lib/python3.6/site-packages", ":")
prepend_path("PATH", "/home/amin/applications/python/3.6.9/bin", ":")
prepend_path("MANPATH", "/home/amin/applications/python/3.6.9/share/man", ":")
prepend_path("PKG_CONFIG_PATH", "/home/amin/applications/python/3.6.9/lib/pkgconfig", ":")
prepend_path("CMAKE_PREFIX_PATH", "/home/amin/applications/python/3.6.9/", ":")
prepend_path("CPATH", "/home/amin/applications/python/3.6.9/include/python3.6m", ":")

