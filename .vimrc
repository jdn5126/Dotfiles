" Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'

" Keep Plugin commands between vundle#begin/end.
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line"

" Put your own customizations below
syntax on
set ignorecase
set nu
set nowrap
set sidescroll=1
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set mouse=a
set ttymouse=xterm2
set splitbelow
set splitright
set completeopt-=preview
set wildmenu

" Mouse fixes
if has('mouse_sgr')
   set ttymouse=sgr
endif

" Search for visually selected text
vnoremap // y/<C-R>"<CR>

" Split horizontally split screens to vertical
" -  
"  -> | |
" -
"  C-w t C-w K

" Split vertically split screens to horizontal
"        -
" | | ->
"        -
" C-w t C-w H

"python-mode config
let g:pymode_python = 'python'
let g:pymode_lint_checkers = []
let g:pymode_options_max_line_length = 85
let g:pymode_trim_whitespaces = 0
let g:pymode_indent = 3

" NerdTree settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$']

colorscheme elflord
