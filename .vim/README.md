# .vim

Vim dot files for development awesomeness. The `vimrc` file is saved to `.vimrc`.

To get set up, just run the following commands via the terminal.

```
$ cd ~/
$ git clone --recursive https://bitbucket.org/albertc/.vim.git .vim
$ ln -sf $HOME/.vim/vimrc $HOME/.vimrc
```

## Pathogen
The vim dot files make use of the excellent
[Pathogen](https://github.com/tpope/vim-pathogen) runtime path manager to
install plugins and runtime files into their own private directories.

The version of Pathogen currently included in this project is 2.3.

## Plugins Used

* [ack](https://github.com/mileszs/ack.vim) - Search Tool
* [delimitMate](https://github.com/vim-scripts/delimitMate.vim) - Automatic closing of quotes, parenthesis, brackets, etc.
* [minibufexpl](https://github.com/fholgado/minibufexpl.vim) - Buffer Status
* [nerdtree](https://github.com/scrooloose/nerdtree) - Filesystem Explorer
* [syntastic](https://github.com/scrooloose/syntastic) - Syntax Checking
* [tabular](https://github.com/godlygeek/tabular) - Tab Control
* [vim-airline](https://github.com/bling/vim-airline) - Lean status/tabline
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) - Solarized Colorscheme
* [vim-fugitive](https://github.com/tpope/vim-fugitive) - Git Wrapper
* [vim-go](https://github.com/fatih/vim-go) - Go support
* [vim-indent-lines](https://github.com/Yggdroot/indentLine) - Display space indentation levels
* [vim-json](https://github.com/elzr/vim-json) - JSON support
