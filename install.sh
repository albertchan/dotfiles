#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

# Detect the operating system
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="Linux"
	sudo apt-get update && sudo apt-get install -y rsync \
		build-essential \
		bash-completion \
		curl \
		fzf \
		git \
		golang \
		postgresql postgresql-contrib \
		python3 \
		ripgrep;
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
	sudo rm -rf /opt/nvim
	sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macOS"
	xcode-select --install
	brew update
	brew install curl rsync wget git
	brew install bash-completion@2 fd fzf luajit
	brew install go 
	brew install neovim
	brew install openssl@3
	brew install postgresql
	brew install python3
	brew install ripgrep
	brew install rust
	brew services start postgresql
	sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

function doIt() {
	rsync --exclude ".DS_Store" --exclude ".git/" --exclude ".idea" \
	    --exclude ".gitignore" --exclude "install.sh" \
		--exclude "README.md" --exclude "LICENSE" -avh --no-perms . ~;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
