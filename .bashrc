alias ls="ls -GhF1"
alias ll="ls -lhAF"
alias skill="kill -9"

source ~/.git-completion.bash
source ~/.git-prompt.sh

username="\u"
thetime="\t"
thedate="\d"
hostname="\h"
directory="\w"

c_reset="\[\e[0m\]" #\[\e[m\]
c_red="\[\e[0;31m\]"
c_green="\[\e[0;32m\]"
c_lightgray="\[\e[37m\]"
c_cyan="\[\e[36m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export PS1="\n$c_lightgray[$thedate - $thetime] $c_green$directory\n $c_red$username$c_lightgray@$c_cyan$hostname:$c_reset$(__git_ps1 ' (%s)')$c_cyan ∫ $c_reset"

export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=gxFxBxDxCxegedabagacad
# BSD version: gxFxBxDxCxegedabagacad
# Linux version: di=36:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
