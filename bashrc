export PATH=~/bin:/opt/hombrew/bin/:/usr/local/Cellar/ruby/3.0.0_1/bin/:$PATH

TERM=screen-256color

alias a='alias'
alias l='ls -l'
alias ll='ls -la'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias vi='v'
alias lg='lazygit'
alias g='git'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias c='clear'
alias e='exit'
alias nv='nvim'
alias vim='nvim'
alias h='history | less'
alias hg='history | grep --color=auto '
alias pg='ps aux | grep --color=auto '
alias fml='~/bin/fm-list.sh'
alias ht='htop'
alias zn='zenith'
alias tm='tmux'
alias tms='tmuxstart.sh'
alias python=python3

HISTSIZE=5000
HISTFILESIZE=10000
shopt -s histappend

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
