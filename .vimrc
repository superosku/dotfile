" Slower scroll speed
:map <ScrollWheelUp> <C-Y>
:map <S-ScrollWheelUp> <C-U>
:map <ScrollWheelDown> <C-E>
:map <S-ScrollWheelDown> <C-D>

let g:ycm_server_log_level = 'debug'

let mapleader = "\<Space>"

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
" set hidden
"
" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
" nmap <leader>T :enew<cr>
"
" " Move to the next buffer
nmap <leader>l :bnext<CR>
"
" " Move to the previous buffer
nmap <leader>h :bprevious<CR>
"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
" nmap <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
" nmap <leader>bl :ls<CR>
"


" Nerd tree ignores pyc files
let NERDTreeIgnore = ['\.pyc$']

" Auto save when focus lost
:au FocusLost * :wa
" enable AutoSave (plugin) on Vim startup
" let g:auto_save = 1

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
" * Down from here is wundle plugin config stuff
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
Plugin '907th/vim-auto-save'

Plugin 'vim-airline/vim-airline'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Required for rust file hilight to work (not required for wundle anymore)
autocmd BufNewFile,BufRead *.rs set filetype=rust 

" Hilight search
:set hlsearch

" Rust tags
" Required: 1. rust installation
" Required: 2. cargo install rusty-tags
" Required: 3. brew install ctags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!


