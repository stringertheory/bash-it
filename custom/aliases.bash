#!/usr/bin/env bash

# use prompt if force not given
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias c='clear'
alias decrap='rm -f *~; rm -f "#"*; rm -f *.pyc; rm -f *.pyo; c;'

# for xmgrace
alias xmgrace='xmgrace -free -geometry 2500x1500 -param $HOME/.xmgrace_default'

# web development
alias simpleserver='$(which python3) -m http.server'

# applications
# alias julia='/Applications/Julia-0.3.3.app/Contents/Resources/julia/bin/julia'
# alias qtgrace='/Applications/qtgrace.app/Contents/MacOS/qtgrace'
# alias inkscape='/Applications/Inkscape.app/Contents/MacOS/Inkscape'

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
