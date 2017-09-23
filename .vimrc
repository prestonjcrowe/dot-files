set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" JS / Babel syntax highlighting
Plugin 'pangloss/vim-javascript'

" Color schemes
Plugin 'dikiaap/minimalist'
Plugin 'zaiste/vim-colors'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
execute pathogen#infect()
set tabstop=4
set shiftwidth=2
set softtabstop=4
set expandtab
set t_Co=256
set number

syntax on
colorscheme minimalist
"colorscheme nucolors
"colorscheme torte
"colorscheme molokai
