#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load git-prompt
source /usr/share/git/git-prompt.sh

# SET PROMPT

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "%s")';
PS1='\[\e[38;5;57m\]\[\e[0;48;5;57m\]\t\[\e[38;5;57;48;5;74m\]\[\e[30;48;5;74m\]\W\[\e[38;5;74;48;5;134m\]\[\e[0;48;5;134m\]${PS1_CMD1}\[\e[0;38;5;134m\]\n\[\e[0m\]'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

export PATH="$PATH:/home/axel/Documents/vendor/awww/target/release"

# output system data to terminal on startup
fastfetch

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
