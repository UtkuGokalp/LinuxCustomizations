#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If exa is installed, use it; otherwise fallback to ls
if command -v exa >/dev/null 2>&1; then
    alias ls='exa -lAh --group-directories-first --sort=name'
else
    alias ls='echo "WARNING: exa not found, falling back to ls" && ls -lAh --group-directories-first --sort=name'
fi

alias grep='grep --color=auto'
alias mv='mv --interactive'
PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[00m\]\$ '
APT_PAGER=cat #For Debian, TODO: Make sure this is executed on Debian and not other distros
