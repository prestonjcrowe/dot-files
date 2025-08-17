" Automatically install vim-plug if not alreay present
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug plugins
call plug#begin()
" :PlugInstall: install plugins
" :PlugUpate:   update plugins
" :PlugClean:   remove plugins no longer in the list

Plug 'morhetz/gruvbox'
Plug 'dikiaap/minimalist'

call plug#end()

" Colorscheme and syntax highlighting
set t_Co=256
syntax on
colorscheme minimalist

" Set tab width to 4 and replace w/ spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Always show line number
set number
