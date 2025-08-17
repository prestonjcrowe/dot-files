# Error should change time color to red
# Success code change time color to green
# Terminal BG Color: #131516

# IDENTIFER="%n"
# IDENTIFER="(ﾉ´･ω･)ﾉ %n"
# IDENTIFER="|ω･)ﾉ"
IDENTIFER="¯\_(ツ)_/¯"

# Primary color, appears in @
COLOR="202"
COLOR="156"

# Secondary color, appears in working dir
COLOR_2="253"

# Darkest color, appears in git branch and time
COLOR_3="247"

DEFAULT_COLOR="white"

identifier() {
   echo "%B%{$FG[$COLOR]%}$IDENTIFER%{$reset_color%}"
}

hostname() {
   echo "%B%{$FG[$DEFAULT_COLOR]%}@%{$reset_color%}%{$FG[$COLOR]%}%m%{$reset_color%}"
}

directory() {
   echo "%{$FG[$COLOR_2]%}%3~%{$reset_color%}"
}

current_time() {
   echo "%(?.%{$FG[$COLOR_3]%}%t%{$reset_color%}.%{$FG[$COLOR]%}%t%{$reset_color%})"
}

return_status() {
   echo "%(?.%{$FG[COLOR_2]%}ok.%{$FG[COLOR_3]%}bad)"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$FG[$COLOR_3]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# putting it all together
PROMPT='$(identifier) $(directory)$(git_prompt_info)%b '
#RPROMPT='$(current_time)$(return_status)'
RPROMPT='$(current_time)'
