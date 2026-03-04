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
export APT_PAGER=cat #For Debian, TODO: Make sure this is executed on Debian and not other distros

#Flash command for automatically flashing the STM32 Blue Pill using st-flash
flashbp() {
    if [ -z "$1" ]; then
        echo "Usage: flash <path-to-bin>"
        return 1
    fi

    echo "Flashing $1..."    
    #0x08000000 is the starting address of the blue pill's flash. If an MCU has a
    #flash that starts at a different address, either the hardcoded value should be changed
    #or it should be made into a parameter.
    st-flash --connect-under-reset write "$1" 0x08000000
}
