# Colors
BLUE="\[\e[1;34m\]"
CYAN="\[\e[1;36m\]"
GREEN="\[\e[1;32m\]"
RED="\[\e[1;31m\]"
END_COLOR="\[\e[0m\]"

PROMPT_COMMAND=__prompt_command

# Functions
return_color() {
   rc=$?
   if [ $rc -ne 0 ]; then
      echo -e "${RED}\$"
   else
      echo -e "${GREEN}\$"
   fi
}

__prompt_command() {
   PS1="${CYAN}[\h]${GREEN}[\t]${CYAN}[\w]`return_color`${END_COLOR} \[$(tput sgr0)\]"
}

# Environment Variables
export EDITOR=vim

# Aliases
alias ls="ls -G"
alias lrtt='ls -lrt | tail'
alias tmat='tmux attach -t'
