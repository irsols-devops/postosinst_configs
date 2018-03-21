# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias c='clear'
alias e='exit'
alias h='history'
alias ll='ls -l| wc -l;ls -halt'
alias ls='ls -hltFG'
alias vi='vim'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export HISTTIMEFORMAT="%d/%m/%y %T "
PATH=$PATH:/root/FogOS/Install:/root/FogOS/Config/
