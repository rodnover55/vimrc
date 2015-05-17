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
Plugin 'powerman/vim-plugin-autosess'

call vundle#end()

filetype plugin indent on

" Variables

let g:projectFolder = "./.vim/"
let g:projectConfig = "project.vim"
let g:defautProjectConfig = "~/source/vimrc/default-project.vim"
let g:phpcomplete_index_composer_command="composer"

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

" Open unite window
map <F3> <ESC>:Unite<CR>

" Unindent line
imap <S-Tab> <ESC><<i

map <C-W> :tabclose<CR>
map <C-T> :tabnew<CR>
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:neocomplete#enable_at_startup = 1

" Autosave
" let g:auto_save = 1
" let g:auto_save_in_insert_mode = 0
" let g:auto_save_silent = 1

" Shortcut for fast open vim config
map <F12> <ESC>:tabnew ~/.vimrc<CR>

" Load project configuration
if filereadable(g:projectConfig)
    execute "source " . g:defautProjectConfig 
    execute "source " . g:projectFolder . g:projectConfig
endif
