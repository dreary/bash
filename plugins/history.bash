# length
HISTSIZE=10000
HISTFILESIZE=10000

# no duplicate lines - see bash(1)
HISTCONTROL=ignoredumps:ignorespace

# timestamp
HISTTIMEFORMAT="%F %T"

# append instead of overwriting
shopt -s histappend

# after each command, save and reload history
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
