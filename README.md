# dotfiles

Useful dotfiles for Mac OS X and Debian environments.

## Installation

You can clone the repository wherever you want. For example, you can keep it in
`~/Developer/dotfiles`, with `~/dotfiles` as a symlink. The bootstrapper script
will pull in the latest version and copy the files to your home folder.

```
git clone https://github.com/albertchan/dotfiles.git && cd dotfiles && source install.sh
```

If `install.sh` is for some reason not executable, run:

```bash
chmod +x install.sh
```

## Generate a new SSH key pair

Post installation you can generate a new SSH key pair:

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## Add your SSH public key to the SSH agent

1. Start the SSH agent in the background:

```bash
eval "$(ssh-agent -s)"
```

2. Add your SSH private key to the ssh-agent:

```bash
ssh-add ~/.ssh/id_ed25519
```

