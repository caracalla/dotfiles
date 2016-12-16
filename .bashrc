# Determine if platform is Linux or macOS (Darwin) and colorize shell accordingly

platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
   platform='Linux'
   alias ls="ls --color -hF1"
   export LS_COLORS="di=36:ln=1;35:so=1;31:pi=1;33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='macOS'
   alias ls="ls -GhF1"
   export LSCOLORS=gxFxBxDxCxegedabagacad
fi

# Aliases

alias ll="ls -lhAF"
alias skill="kill -9"

# PS1 configuration

source ~/.git-completion.bash
source ~/.git-prompt.sh

# PS1 Colors
c_reset="\[\e[0m\]" #\[\e[m\]
c_black="\[\e[0;30m\]"
c_red="\[\e[0;31m\]"
c_green="\[\e[0;32m\]"
c_yellow="\[\e[0;33m\]"
c_blue="\[\e[0;34m\]"
c_magenta="\[\e[0;35m\]"
c_cyan="\[\e[0;36m\]"
c_lightgray="\[\e[0;37m\]"
c_default="\[\e[0;39m\]" #???

# PS1 helpers
git_ps1=${c_reset}'$(__git_ps1 " (%s)")'
date_and_time="${c_lightgray}[\d - \t]"
directory="${c_green}\w"

if [[ $platform == 'Linux' ]]; then
  prompt_symbol="${c_magenta} » ${c_reset}"
  username_and_hostname="${c_red}\u${c_lightgray}@${c_magenta}\h"
else
  prompt_symbol="${c_cyan} ∫ ${c_reset}"
  username_and_hostname="${c_red}\u${c_lightgray}@${c_cyan}\h"
fi

export PS1="\n${date_and_time} ${directory}\n ${username_and_hostname}:${git_ps1}${prompt_symbol}"

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export EDITOR=vim
export CLICOLOR=1
