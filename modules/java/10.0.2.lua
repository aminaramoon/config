
local root = '/home/aaramoon/Applications'
local app = myModuleName()
local version = myModuleVersion()

local base = pathJoin(root, app, version)

setenv('JAVA_HOME', base)
setenv('JDK_HOME', base)
setenv('JRE_HOME', pathJoin(base, 'jre'))
setenv('CLASSPATH', '.')
append_path('CLASSPATH', pathJoin(base, 'lib'), ';')
append_path('CLASSPATH', pathJoin(base, 'jre', 'lib'), ';')

prepend_path('PATH', pathJoin(base, 'bin'))
prepend_path('LD_LIBRARY_PATH', pathJoin(base, 'lib'))

family('compiler')
