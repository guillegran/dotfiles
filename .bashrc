#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;34m\]\u\[\e[m\]\[\e[1;37m\]@\[\e[m\]\[\e[0;31m\]\h\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \[\e[0;35m\]\$\[\e[m\]\[\e[0;37m\] '
alias config='/usr/bin/git --git-dir=/home/guillermo/.cfg/ --work-tree=/home/guillermo'
