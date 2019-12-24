
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

prepend_path('CPATH', pathJoin(base, 'include'))
prepend_path('LIBRARY_PATH', pathJoin(base, 'lib'))

setenv('BOOST_HOME', base)
setenv('BOOST_INCS', pathJoin(base, 'include'))
setenv('BOOST_LIBS', pathJoin(base, 'lib'))

