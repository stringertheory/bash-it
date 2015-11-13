#!/usr/bin/env bash

# set up virtualenvwrapper
WORKON_HOME=~/.virtualenvs
mkdir -p ${WORKON_HOME}
vew=/usr/local/bin/virtualenvwrapper_lazy.sh
if [ -e ${vew} ]; then
   source ${vew}
fi

# Call virtualenvwrapper's "workon" if .venv exists.  This is modified from--
# http://justinlilly.com/python/virtualenv_wrapper_helper.html
# which is linked from--
# http://virtualenvwrapper.readthedocs.org/en/latest/tips.html#automatically-run-workon-when-entering-a-directory
check_virtualenv() {
    if [ -e .venv ]; then
        env=`cat .venv`
        if [ "$env" != "${VIRTUAL_ENV##*/}" ]; then
            echo ".venv in directory, calling workon ${env}. check bashrc for details"
            workon $env
        fi
    fi
}
venv_cd () {
    builtin cd "$@" && check_virtualenv
}
# Call check_virtualenv in case opening directly into a directory (e.g
# when opening a new tab in Terminal.app).
check_virtualenv
alias cd='venv_cd'
