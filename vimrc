"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matt's vimrc
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
" cygwin stuff
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"


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

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" }}}

" Folding {{{

set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
set foldmethod=indent       " fold based on indent level

" }}}

" Movement {{{

" kj is escape
inoremap kj <esc>

" }}}

" Leader Shortcuts {{{
" }}}

set colorcolumn=80
set modelines=1

" vim:foldmethod=marker:foldlevel=0
