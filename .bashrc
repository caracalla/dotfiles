alias ls='ls -GhF1'
alias ll='ls -lhAF'
alias skill='kill -9'
# alias prod='shdl rails console -e production'
# alias staging='shdl rails console'

source ~/.git-completion.bash
source ~/.git-prompt.sh

username="\u"
thetime="\t"
thedate="\d"
hostname="\h"
directory="\w"

# PS1 Prompt definition
# show date and time in light gray: 	\[\e[37m\][$thedate - $thetime]
# show username in red: 							\[\e[31m\]$username
# show @ in light gray: 							\[\e[37m\]@
# show hostname in cyan: 							\[\e[36m\]$hostname:
# show pwd in green: 									\[\e[32m\]$directory
# show git status and prompt in white	\[\e[m\]$(__git_ps1) ∫

#export PS1="[\[\e[37m\]$thedate - $thetime] \[\e[31m\]$username\[\e[37m\]@\[\e[36m\]$hostname: \[\e[32m\]$directory \[\e[37m\]\n∫ \[\e[m\]"
#export PS1="$(__git_ps1)\[\e[31m\]$username\[\e[37m\]@\[\e[36m\]$hostname: \[\e[32m\]$directory \[\e[37m\]\n[\[\e[37m\]$thedate - $thetime] ∫ \[\e[m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export PS1='\n\[\e[37m\][\d - \t] \[\e[32m\]\w\n \[\e[31m\]\u\[\e[37m\]@\[\e[36m\]\h:\[\e[m\]$(__git_ps1 " (%s)") \[\e[36m\]∫ \[\e[m\]'

export CLICOLOR=1
export LSCOLORS=gxFxBxDxCxegedabagacad
# export EDITOR=vim
export EDITOR='subl'
export SHUDDLE_MESSAGING_HMAC_KEY=dLj0d6g4dsK5x7ldt4l8SjYXiRo3m3+v+u49Ljx22YE=

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
