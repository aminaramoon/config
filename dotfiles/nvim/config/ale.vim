let g:ale_linters = {
\ 'cpp': ['clangd', 'g++'],
\ 'c': ['clangd']
\}

let g:ale_fixers = {
\ '*': ['trim_whitespace'],
\ 'cpp': ['clang-format'],
\}

let g:ale_cpp_clang_options='-std=c++17 -Wall'
let g:ale_cpp_gcc_options='-std=c++17 -Wall'

let g:ale_cpp_clangd_executable='clangd'
let g:ale_c_parse_compile_commands=1

let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1


let g:ale_completion_enabled = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
