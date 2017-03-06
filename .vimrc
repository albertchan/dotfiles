" Use Vim settings, rather than Vi settings
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end() " required

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
set expandtab	" expand tab to spaces

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

