
local root = '/home/aaramoon/Applications'
local app = 'alias'

local base = pathJoin(root, app)

local deterGui = 'ssh -N -L localhost:9595:control.$1.edgect:9595 deter'
local weatherScr = 'curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\\?metric\\=0\\&locCode\\=$1 | grep Currently | grep -o -P \'[0-9]*(?=F<)\''
set_shell_function("gui", deterGui)
set_shell_function("weather", weatherScr)
set_alias("fix-monitors", "/home/aaramoon/Applications/scripts/fix-monitor-layout.sh")



setenv('edgect', '/home/aaramoon/Workspace/nash/edgect/top-level')
set_alias('dock_join', 'docker exec -it $(hostname -s) bash')
set_alias('pbcpy', 'xclip -selection clip <')
set_alias('ls', 'ls --color=auto')
set_alias('vim', 'nvim')
set_alias('grep', 'grep --color=auto')
set_alias('install', 'sudo apt-get install --yes')
set_alias('update', 'sudo apt-get update && sudo apt-get upgrade')
set_alias('deter_gui', 'ssh -N -L localhost:9595:control.aaramoon-exp.edgect:9595 deter')
set_alias('check_diff', 'pylint --confidence=INFERENCE --errors-only $(git diff --name-only HEAD~1)')
set_alias('mark', 'pushd . > /dev/null')
set_alias('back', 'popd > /dev/null')
set_alias('...', 'cd ../..')
set_alias('....', 'cd ../../..')
set_alias('gdb', 'gdb -tui')
set_alias('logoff', 'pkill -u $USER')


prepend_path('PATH', base)


