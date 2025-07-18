# move old configs
old_configs_dir="$HOME/.old_configs"

mkdir -p "$old_configs_dir"

mv ~/.bash_profile "$old_configs_dir"
mv ~/.bashrc "$old_configs_dir"
mv ~/.git-completion.bash "$old_configs_dir"
mv ~/.git-prompt.sh "$old_configs_dir"
mv ~/.gitconfig "$old_configs_dir"
mv ~/.gitignore "$old_configs_dir"
mv ~/.vimrc "$old_configs_dir"
mv ~/.pryrc "$old_configs_dir"
mv ~/.tmux.conf "$old_configs_dir"


# create symlinks for new configs
curdir=`pwd`

ln -s "$curdir/.bash_profile" ~/.bash_profile
ln -s "$curdir/.bashrc" ~/.bashrc
ln -s "$curdir/.git-completion.bash" ~/.git-completion.bash
ln -s "$curdir/.git-prompt.sh" ~/.git-prompt.sh
ln -s "$curdir/.gitconfig" ~/.gitconfig
ln -s "$curdir/.gitignore" ~/.gitignore
ln -s "$curdir/.vimrc" ~/.vimrc
ln -s "$curdir/.pryrc" ~/.pryrc


# TODO: This is the wrong idea.  What I want is to use one tmux config when
# logged in through SSH, and another when not.  Typically, it's always one or
# the other, but for some hosts (like my rpi) it can be both
if [[ -n "$SSH_CONNECTION" ]]; then
  ln -s "$curdir/tmux/remote.tmux.conf" ~/.tmux.conf
else
  ln -s "$curdir/tmux/local.tmux.conf" ~/.tmux.conf
fi
