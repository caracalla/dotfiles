alias ls='ls -GhF1'
alias ll='ls -lhAF'
alias skill='kill -9'

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

# export EDITOR=vim
# export EDITOR='subl'
export CLICOLOR=1
export LSCOLORS=gxFxBxDxCxegedabagacad
# Linux:
# export LSCOLORS=di=36:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
