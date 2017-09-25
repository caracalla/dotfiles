if [ -r ~/.profile ]; then
	. ~/.profile;
fi

# Aliases and scripts that can't be pushed to the dotfiles repo
if [ -r ~/.bash_secrets ]; then
	. ~/.bash_secrets;
fi

case "$-" in *i*)
	if [ -r ~/.bashrc ]; then
		. ~/.bashrc;
	fi;
esac

# Load rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# Load nvm
export NVM_DIR="/Users/kimo/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
