#!/bin/bash

# prompt themeing

#added TITLEBAR for updating the tab and window titles with the pwd
case $TERM in
        xterm*)
        TITLEBAR="\[\033]0;\w\007\]"
        ;;
        *)
        TITLEBAR=""
        ;;
esac
PROMPT="${TITLEBAR}\[${red}\]\$(rvm_version_prompt) \[${green}\]\w \[${yellow}\]\$(scm_prompt_info)\[${normal}\] "


# scm themeing
SCM_THEME_PROMPT_DIRTY=" ✗"
SCM_THEME_PROMPT_CLEAN=" ✓"
SCM_THEME_PROMPT_PREFIX="("
SCM_THEME_PROMPT_SUFFIX=")"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"