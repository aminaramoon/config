
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('MANPATH', pathJoin(base, 'share', 'man'))

