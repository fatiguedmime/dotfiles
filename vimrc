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

" save the file and exit
nnoremap <leader>w :wq<CR>

" quit without saving
nnoremap <leader>q :q<CR>

" turn off search highlight
nnoremap <leader><space> :noh<CR>

" }}}

set colorcolumn=80
set modelines=1

" vim:foldmethod=marker:foldlevel=0
