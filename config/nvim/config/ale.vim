let g:ale_linters = {
\ 'cpp': ['g++'],
\}

let g:ale_fixers = {
\ '*': ['trim_whitespace'],
\ 'cpp': ['clang-format'],
\}

let g:ale_c_parse_compile_commands=1
let g:ale_cpp_clang_options='-std=c++17 -Wall'
let g:ale_cpp_clangd_executable='clangd'

