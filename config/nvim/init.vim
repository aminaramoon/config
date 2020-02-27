set rtp+=~/.fzf

let mapleader = ","

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

source $HOME/.config/nvim/config/setup.vim
source $HOME/.config/nvim/config/bundles.vim
source $HOME/.config/nvim/config/nerd_tree.vim
source $HOME/.config/nvim/config/nerd_comment.vim
" source $HOME/.config/nvim/config/syntastic.vim
source $HOME/.config/nvim/config/airline.vim
source $HOME/.config/nvim/config/goyo.vim
source $HOME/.config/nvim/config/ale.vim
source $HOME/.config/nvim/config/keywords.vim

set background=dark
colorscheme tender

