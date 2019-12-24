
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

depends_on('gradle', 'java', 'android')

prepend_path('PATH', pathJoin(base, 'bin'))

