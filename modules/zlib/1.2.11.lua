
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))


prepend_path('CPATH', pathJoin(base, 'include'))
prepend_path('LIBRARY_PATH', pathJoin(base, 'lib'))
