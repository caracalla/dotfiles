# move old configs
old_configs_dir="$HOME/old_configs"

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


# create symlink for tmux config, based on current OS
unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
  ln -s "$curdir/linux/.tmux.conf" ~/.tmux.conf
elif [[ "$unamestr" == 'Darwin' ]]; then
  ln -s "$curdir/darwin/.tmux.conf" ~/.tmux.conf
fi
