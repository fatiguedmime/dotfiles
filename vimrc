"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Matt's vimrc
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable

set backspace=indent,eol,start
set ignorecase
set smartcase

" Colors {{{
" }}}

" Spaces & Tabs {{{

set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set shiftwidth=4            " number of spaces when using << and >>

" }}}

" UI Config {{{

set number                  " show line numbers
set showcmd                 " show last command in btm-right
set wildmenu                " visual autocomplete for command menu
set showmatch               " highlight matching [{()}]

" }}}

" Searching {{{

set incsearch               " search as characters are entered
set hlsearch                " highlight matches

" }}}

" Folding {{{

set foldenable              " enable folding
set foldlevel=10             " 
set foldlevelstart=1        " open most folds by default
set foldnestmax=10          " 10 nested fold max
set foldmethod=indent       " fold based on indent level

" }}}

" Movement {{{

" jj is escape
inoremap jj <esc>

" }}}

" File/Buffer Management {{{

set hidden

" }}}

" Leader Shortcuts {{{

" The | signifies the end of a command
" set leader key to space
let mapleader=" "|

" save the file and keep editing
nnoremap <leader>s :w<CR>|
"nnoremap <leader>bw :w<CR>|

" save the file and exit
nnoremap <leader>w :w<CR><bar>:bd<CR>|

" quit without saving
nnoremap <leader>bd :bd<CR>|

" turn off search highlight
nnoremap <leader><space> :noh<CR>|

" buffer movement
nnoremap <leader>p :bp<CR>|
nnoremap <leader>n :bn<CR>|

" buffer movement with :b
nnoremap <leader>b :ls<CR>:b<space>|

" }}}

" Auto-Complete Config {{{

autocmd FileType cs setlocal omnifunc=OmniSharp#Complete

" }}}

" Vim Editing {{{

nnoremap <leader>_d :e $MYVIMRC<CR>       :Edit .vimrc
nnoremap <leader>_r :source $MYVIMRC<CR>  :Reload .vimrc

" }}}

" Plugins {{{

call plug#begin('~/vimfiles/plugged')

" Toggle relative line numbers with <C-N>
Plug 'jeffkreeftmeijer/vim-numbertoggle'
" Sweet buffer indicators and file info at top and bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" File Navigation
Plug 'jeetsukumaran/vim-filebeagle'
" Fuzzy search through stuff
Plug 'kien/ctrlp.vim'
" Quick search for text in files
Plug 'rking/ag.vim'
" Auto completion engine
Plug 'lifepillar/vim-mucomplete'
" Auto completion library for C#
Plug 'OmniSharp/omnisharp-vim'
" Auto tag management
Plug 'alvan/vim-closetag'
" Auto pair management, i.e. quotes
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-grepper'
" Notes plugins
Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'
" Graphical Undo
Plug 'sjl/gundo.vim'
" Vimwiki
Plug 'vimwiki/vimwiki'

" Linting
Plug 'scrooloose/syntastic'

call plug#end()

" }}}

" Grepper Mappings {{{

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" }}}

" airline {{{

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='base16_twilight'

" }}}

" Vim-Notes Config {{{

let g:notes_directories = ['~/Documents/Notes']

" }}}

" VimWiki Config {{{

set nocompatible
filetype plugin on
syntax on

nmap <Leader>wb <Plug>VimwikiGoBackLink

" Allow for custom templates
let g:vimwiki_list = [{
  \ 'path': '$HOME/vimwiki',
  \ 'template_path': '$HOME/vimwiki/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html'}]

" Auto update the table of contents on save
"let g:vimwiki_list = [{'path': '~/vimwiki/', 'auto_toc': 1}]

" }}}

" ConEmu Config {{{

if !empty($CONEMUBUILD)
    " Visual
    set term=xterm
    set encoding=utf-8
    set termencoding=&encoding
    set t_Co=16
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"

    " Mouse
    set mouse=a
    inoremap <Esc>[62~ <C-X><C-E>
    inoremap <Esc>[63~ <C-X><C-Y>
    nnoremap <Esc>[62~ <C-E>
    nnoremap <Esc>[63~ <C-Y>

    " Backspace fix
    inoremap <Char-0x07F> <BS>
    nnoremap <Char-0x07F> <BS>
endif

" }}}

let g:closetag_filenames = "*.html,*.xml,*.htm,*.xsl,*.xsd"

"set colorcolumn=80
set modelines=1

" vim:foldmethod=marker:foldlevel=0
