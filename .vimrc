" Use Vim settings, rather than Vi settings
set nocompatible
filetype plugin indent on
syntax on

" Editor settings
set background=dark
set backspace=2 " make backspace work like most other apps
set encoding=utf-8
set hlsearch
set noswapfile
set nowrap
set number
set ruler	" show the cursor position all the time
set spell spelllang=en_us

" Indentation and spacing
set autoindent
set smarttab
set shiftwidth=2
set tabstop=2
set expandtab

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
endif

" NERDTree config
let NERDChristmasTree=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" Keyboar mappings
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
