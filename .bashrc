platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
   alias ls="ls --color -hF1"
   export LS_COLORS="di=36:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='macOS'
   alias ls="ls -GhF1"
   export LSCOLORS=gxFxBxDxCxegedabagacad
fi

alias ll="ls -lhAF"
alias skill="kill -9"
alias loc='ssh root@local.upcounsel.com'

source ~/.git-completion.bash
source ~/.git-prompt.sh

# PS1 Colors
c_reset="\[\e[0m\]" #\[\e[m\]
c_red="\[\e[0;31m\]"
c_green="\[\e[0;32m\]"
c_lightgray="\[\e[37m\]"
c_cyan="\[\e[36m\]"

# PS1 helpers

git_ps1='$(__git_ps1 " (%s)")'
date_and_time='$c_lightgray[\d - \t]'
directory='$c_green\w'
username_and_hostname='$c_red\u$c_lightgray@$c_cyan\h'
git_status='$c_reset$git_ps1'
prompt_symbol='$c_cyan ∫ $c_reset'

export PS1="\n$date_and_time $directory\n $username_and_hostname:$gitstatus$prompt_symbol"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export EDITOR=vim
export CLICOLOR=1

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
