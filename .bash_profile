# .bash_profile

if [ -r ~/.profile ]; then
	. ~/.profile;
fi

case "$-" in *i*)
	if [ -r ~/.bashrc ]; then
		. ~/.bashrc;
	fi;
esac

# Aliases and scripts that can't be pushed to the dotfiles repo
if [ -r ~/.bash_secrets ]; then
	. ~/.bash_secrets;
fi

# Load rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# Load pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)";
fi

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
