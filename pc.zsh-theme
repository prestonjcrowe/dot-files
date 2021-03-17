HOST="home"

# Primary color, appears in @
COLOR="202"

# Secondary color, appears in working dir
COLOR_2="253"

# Darkest color, appears in git branch and time
COLOR_3="247"

DEFAULT_COLOR="white"

username() {
   echo "%B%{$FG[$COLOR]%}%n%{$reset_color%}"
}

hostname() {
   echo "%B%{$FG[$DEFAULT_COLOR]%}@%{$reset_color%}%{$FG[$COLOR]%}%m%{$reset_color%}"
}

directory() {
   echo "%{$FG[$COLOR_2]%}%3~%{$reset_color%}"
}

current_time() {
   echo "%{$FG[$COLOR_3]%}%t%{$reset_color%}"
}

return_status() {
   echo "%(?..X)"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$FG[$COLOR_3]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# putting it all together
PROMPT='$(username) $(directory)$(git_prompt_info)%b '
RPROMPT='$(current_time)$(return_status)'
