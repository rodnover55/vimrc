set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'
Plugin 'yegappan/grep'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'm2mdas/phpcomplete-extended'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'vim-scripts/dbext.vim'

call vundle#end()

filetype plugin indent on

set incsearch
set smartcase
set nowrap
set hidden
set number
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set pastetoggle=
set autoread
set dir=~/.vim/swap/
set wildmenu
set wcm=<TAB>
set backspace=indent,eol,start
set spelllang=ru_yo,en_us
set shortmess+=I
set showtabline=2
set showmatch
set expandtab

map <F3> <ESC>:Unite<CR>
map <s-F3> <ESC>:Unite  

autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

let g:phpcomplete_index_composer_command="composer"

" Autosave
" let g:auto_save = 1
" let g:auto_save_in_insert_mode = 0
" let g:auto_save_silent = 1
