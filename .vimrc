" Infect with pathogen for plugins
" see https://github.com/tpope/vim-pathogen
execute pathogen#infect()
filetype plugin indent on
syntax on

" Use Vim settings, rather than Vi settings
set nocompatible

set background=dark
set encoding=utf-8
set number
set autoindent
set smarttab
set tabstop=4
set expandtab	" expand tab to spaces
set ruler	" show the cursor position all the time

" Solarized color scheme
" see https://github.com/altercation/vim-colors-solarized
let g:solarized_termcolors=256
colorscheme solarized

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" NERDTree
let NERDChristmasTree=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']
