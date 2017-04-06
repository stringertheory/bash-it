#!/usr/bin/env bash
#
export GIT_EDITOR=/usr/local/bin/emacs

function tabname {
  printf "\e]1;$1\a"
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
