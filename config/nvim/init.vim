set rtp+=~/.fzf

set number
set relativenumber
set autoindent
set cursorline

set encoding=utf-8
set fileformats=unix,dos,mac
filetype plugin indent on
syntax on 

set nocompatible
set guifont=Monaco\ Regular:h20

source $HOME/.config/nvim/config/bundles.init
source $HOME/.config/nvim/config/nerd_tree.init
source $HOME/.config/nvim/config/syntastic.init
source $HOME/.config/nvim/config/airline.init
source $HOME/.config/nvim/config/deoplete.init
source $HOME/.config/nvim/config/keywords.vim

set background=dark
colorscheme tender

