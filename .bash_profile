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

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi
