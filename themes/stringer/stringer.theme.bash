#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

orange=$(tput setaf 172)

# Determine active Python virtualenv details.
function set_virtualenv () {
    if test -z "$VIRTUAL_ENV" ; then
        PYTHON_VIRTUALENV=""
    else
	PYTHON_VIRTUALENV="(`basename \"$VIRTUAL_ENV\"`) "
    fi
}

function prompt_command() {

    set_virtualenv
    
    PS1="\n${orange}${PYTHON_VIRTUALENV}${cyan}\u@\h: ${reset_color}${yellow}\w${green}$(scm_prompt_info)\n${reset_color}→ "
}

PROMPT_COMMAND=prompt_command;
