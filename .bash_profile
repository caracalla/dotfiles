if [ -r ~/.profile ]; then
	. ~/.profile;
fi

# Aliases and scripts that can't be pushed to a repo
if [ -r ~/.secrets ]; then
	. ~/.secrets;
fi

case "$-" in *i*)
	if [ -r ~/.bashrc ]; then
		. ~/.bashrc;
	fi;
esac

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi
