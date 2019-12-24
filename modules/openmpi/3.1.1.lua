
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

setenv('MPI_DIR', base)

prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))
prepend_path('CPATH', pathJoin(base, 'include'))

