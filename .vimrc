" Nerd tree ignores pyc files
let NERDTreeIgnore = ['\.pyc$']

" Auto save when focus lost
:au FocusLost * :wa

" Easier tab navigation
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Line numbers on left side
set number
" Syntax hilight
syntax on
" Mouse support
set mouse+=a

" Dunno?
set ruler

" Identification and tabs, python style
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" ***************
" * Down from here is Vundle plugin config stuff
" ***************

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'

Plugin 'rust-lang/rust.vim'
"Plugin 'andviro/flake8-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ***************
" * Not Vundle plugin stuff anymore
" ***************

" Fix to get rust file hilight to work
autocmd BufNewFile,BufRead *.rs set filetype=rust 

