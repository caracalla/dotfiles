if [ -r ~/.profile ]; then
	. ~/.profile;

fi
case "$-" in *i*)
	if [ -r ~/.bashrc ]; then
		. ~/.bashrc;
	fi;
esac

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# Alternatively,
# . ~/.profile
# . ~/.bashrc
