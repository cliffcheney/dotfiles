export PATH=~/bin::/usr/local/bin/:/usr/local/Cellar/ruby/3.0.0_1/bin/:$PATH
export EDITOR=/usr/bin/nvim

TERM=screen-256color

alias a='alias'
alias l='ls -l'
alias ll='ls -la'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias vi='nvim'
alias lg='lazygit'
alias g='git'
alias gadd='git add'
alias gcom='git commit'
alias gpush='git push'
alias c='clear'
alias e='exit'
alias nv='nvim'
alias vim='nvim'
alias h='history | less'
alias hg='history | grep --color=auto '
alias pg='ps aux | grep --color=auto '
alias fml='~/bin/fm-list.sh'
alias ht='htop'
alias bt='btop'
alias zn='zenith'
alias tm='tmux'
alias tms='tmuxstart.sh'
alias python=python3

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend
