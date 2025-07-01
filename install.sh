#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

# Detect the operating system
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="Linux"
	sudo apt-get update && sudo apt-get install -y rsync \
		build-essential \
		bash-completion \
		bash-completion-extras \
		curl \
		fzf \
		git \
		postgresql postgresql-contrib \
		python3;
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="macOS"
	xcode-select --install
	brew update && \
	# brew install coreutils && \
	# brew install findutils && \
	# brew install gnu-sed && \
	# brew install gnu-tar && \
	# brew install gawk && \
	# brew install grep && \
	# brew install bash-completion@2 && \
	# brew install bash && \
	brew install rsync;
	brew install fzf;
	brew install postgresql;
	brew install python3;
	brew install neovim;
	brew services start postgresql;
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi

function doIt() {
	rsync --exclude ".DS_Store" --exclude ".git/" --exclude ".idea" \
	    --exclude ".gitignore" --exclude "bootstrap.sh" \
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
