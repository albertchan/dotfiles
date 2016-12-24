" Infect with pathogen for plugins
" see https://github.com/tpope/vim-pathogen
execute pathogen#infect()
filetype plugin indent on
syntax on

" Vim settings
set nocompatible
set noswapfile

" Editor settings
set background=dark
set encoding=utf-8
set number
set ruler	" show the cursor position all the time
set autoindent
set backspace=2 " make backspace work like most other apps
set smarttab
set shiftwidth=2
set tabstop=2
set expandtab	" expand tab to spaces
set nowrap
set hlsearch
set spell spelllang=en_us

" Solarized color scheme
" see https://github.com/altercation/vim-colors-solarized
let g:solarized_termcolors=256
colorscheme solarized

" indentLine config
let g:indentLine_char = '|'
let g:indentLine_color_term = 236

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" indentLine config
let g:indentLine_char = '|'
let g:indentLine_color_term = 236

" NERDTree config
let NERDChristmasTree=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" Keyboar mappings
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

