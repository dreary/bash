#!/bin/bash

# -----------------------------------------------------
# Configuration
# -----------------------------------------------------

BASH="$HOME/.bash/"
PLUGINS="$BASH/plugins"
COLORS="$BASH/colors"
OS=$(uname)

export EDITOR=$(which vim)
export PAGER=$(which less)

# -----------------------------------------------------
# Aliases
# -----------------------------------------------------

[[ -r $BASH/alias.bash ]] && . $BASH/alias.bash

# -----------------------------------------------------
# Plugins
# -----------------------------------------------------

if [ -d $PLUGINS ]; then
  for x in $PLUGINS/*.bash
    do
      . $x
    done
fi

# -----------------------------------------------------
# Local Includes
# -----------------------------------------------------

[[ -r ~/.bash.local ]] && . ~/.bashrc.local

# -----------------------------------------------------
# dircolors - color setup for ls
# -----------------------------------------------------

if [ -x $(which dircolors) ] ; then
  eval `dircolors $COLORS/dircolors.molokai`
fi

# -----------------------------------------------------
# ls - list directory contents
# -----------------------------------------------------

case "$-" in
  *i* ) alias ls="ls --color" ;;
esac

