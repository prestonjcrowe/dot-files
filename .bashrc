# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH=/usr/local/bin:$PATH
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[72m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=FxfxcxdxbxegedabaFacad
#export LSCOLORS=ExFxBxDxCxegedabagacad

#Aliases
alias goto=". ~/bashscripts/goto.sh $1"
alias lh="ls -Ad .*"
alias ls='ls -GFh'
alias cl='clear'
alias projects='cd ~/Documents/Projects'
alias rm='rm -i'
alias count=". ~/bashscripts/charCount.sh $1"
alias random-mac="openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs sudo ifconfig en0 ether"
