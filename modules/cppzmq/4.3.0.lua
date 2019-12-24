
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

prepend_path('CPATH', pathJoin(base, 'include'))

depends_on('zmq')

