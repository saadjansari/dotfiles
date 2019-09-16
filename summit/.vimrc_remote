" ---------------------------------------
" ----------- VIM CONFIG FILE -----------
" ---------------------------------------

set nocp              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'raingo/vim-matlab'



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin for using LaTeX via vim
" Plugin 'LaTeX-Box-Team/LaTeX-Box'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" leader key
let mapleader = ","

" enable syntax highlighting
syntax on

" set colorscheme
set background=dark
colorscheme palenight
" let g:lightline.colorscheme = 'palenight'
let g:palenight_terminal_italics=1

" leader shortcuts
inoremap <leader>p %<Space>
nnoremap <leader>p 0i%<Space><Esc>

" Escape mappings
inoremap jk <Esc>l

" saves time as by eliminating the need to hold down shift
nnoremap ; :
" remap up and down so that navigation is done by going down each line on the screen instead of line numbers (helps when there are super long lines)
nnoremap j gj
nnoremap k gk
noremap J 5j
noremap K 5k
noremap L $
noremap H 0

" vim split navigation shortcuts and settings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


" remove certain keys to help user get used to the most efficient method of vi-ing.
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep


" Visuals
" vim displays numbers on the left
set number
" vim displays the current line highlighted
set cursorline
" graphical interface for autocomplete in command line
set wildmenu
" only redraw visuals when they are needed
set lazyredraw
" highlight matching parantheses
set showmatch


" TAB : interpretation and usage
" tabs are 4-spaces when files are read
set tabstop=4
" tabs are given a size of 4 spaces when editing a file and using tab
set softtabstop=4
" tabs are not just a shortcut for 4 spaces
set expandtab
" indent operations (>> and <<) use 4 space indents
set shiftwidth=4
" when indenting, the selection is kept highlighted
vnoremap > >gv
vnoremap < <gv

" indenting
set autoindent
set smartindent
set breakindent

" check last line of the file for a modeline
" set modelines=1

" define fold markers usage ( these are {{{ and }}} )
set foldmethod=marker
