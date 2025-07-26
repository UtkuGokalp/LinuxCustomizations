#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias mv='mv --interactive'
PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[00m\]\$ '
