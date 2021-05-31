set hidden
let g:LanguageClient_serverStderr = '/tmp/clangd.stderr'

let g:LanguageClient_serverCommands = {
    \ 'cpp': ['clangd'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
