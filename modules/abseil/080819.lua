
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

prepend_path('CPATH', pathJoin(base, 'include'))
prepend_path('LIBRARY_PATH', pathJoin(base, 'lib'))

setenv('ABSEIL_HOME', base)
setenv('ABSEIL_INCS', pathJoin(base, 'include'))
setenv('ABSEIL_LIBS', pathJoin(base, 'lib'))

