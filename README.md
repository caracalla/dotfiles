# Dotfiles

Symlinks all the relevant config files to the current user's home directory.  Only works for operating systems that return a `uname` of "Linux" or "Darwwin".  Based on a `bash` system.

## Setup

`bash setup.sh`

## TODO:
* Remove the legacy tmux configs in /darwin and /linux
* Add a function/alias to ssh-add
* Distinguish between root and non-root user
* Add `zsh` support (or figure out how to make macOS stop complaining about it)
