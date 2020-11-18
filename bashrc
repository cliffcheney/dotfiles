export PATH=~/bin:$PATH

alias l='ls -l'
alias ll='ls -la'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias vi='v'
alias c='clear'
alias e='exit'
alias v='vim'
alias h='history | less'
alias hg='history | grep --color=auto '
alias pg='ps aux | grep --color=auto '
alias fml='~/bin/fm-list.sh'
alias ht='htop'
alias tm='tmux'
alias tms='tmuxstart.sh'
alias python=python3

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
