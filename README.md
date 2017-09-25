# Dotfiles

Run `setup.sh` in this directory to create symlinks to the relevant files in the current user's home directory. Some files, such as `.tmux.conf`, will not be symlinked, as they are platform dependent.

## TODO:

* Allow `setup.sh` to determine which OS it's in and copy files accordingly.
* Add a function/alias to ssh-add
* Distinguish between root and non-root user
* Do some stuff with colors?
