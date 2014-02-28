#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# return value visualisation
PS1="\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "

# run archey
[[ "$PS1" ]] && archey3

# ls colors and shortcuts
alias ls='ls --color=auto'
alias la='ls -la'
alias ll='ls -l'

# visual log & diff for vcs
alias qlog='bzr qlog'
alias qdiff='bzr qdiff'


