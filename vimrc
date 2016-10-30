"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matt's vimrc
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable

" Colors {{{
" }}}

" Spaces & Tabs {{{

set tabstop=2               " number of visual spaces per TAB
set softtabstop=2           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set shiftwidth=2            " number of spaces when using << and >>

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
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
set foldmethod=indent       " fold based on indent level

" }}}

" Movement {{{

" jj is escape
inoremap jj <esc>

" }}}

" Leader Shortcuts {{{

" set leader key to space
let mapleader=" "

" save the file and keep editing
nnoremap <leader>s :w<CR>
nnoremap <leader>bw :w<CR>

" save the file and exit
nnoremap <leader>w :w<CR><bar>:bd<CR>

" quit without saving
nnoremap <leader>bd :bd<CR>

" turn off search highlight
nnoremap <leader><space> :noh<CR>

" buffer movement
nnoremap <leader>p :bp<CR>
nnoremap <leader>n :bn<CR>

" }}}

" Plugins {{{

call plug#begin('~/vimfiles/plugged')

Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" }}}

" airline {{{

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

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
  inoremap <Esc>[62~ <C-E>
  inoremap <Esc>[63~ <C-Y>
endif

" }}}

"set colorcolumn=80
set modelines=1

" vim:foldmethod=marker:foldlevel=0
