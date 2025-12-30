# Default bash theme

# COLORS
RESETC="\[0m;"
PURPLE="\[\e[38;5;57m\]"

# SPECIAL CHARACTERS
SEMICIRC_L="\ue0b6"
SEMICIRC_R="\ue0b4"

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 "%s")';

PS1='\[\e[38;5;57m\]\[\e[0;48;5;57m\]\t\[\e[38;5;57;48;5;74m\]\[\e[30;48;5;74m\]\W\[\e[38;5;74;48;5;134m\]\[\e[0;48;5;134m\]${PS1_CMD1}\[\e[0;38;5;134m\]\n\[\e[0m\]'
