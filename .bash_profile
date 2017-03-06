# Load the shell dotfiles, and then some:
for file in ~/.{aliases,bash_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# environment variables
export GOPATH=$HOME/Developer/go
export PATH=$PATH:$GOPATH/bin

