#!/bin/sh

set -e

if tmux has-session -t=dot 2> /dev/null; then
      tmux attach -t dot
        exit
fi

tmux new-session -d -s dot -n vim -x $(tput cols) -y $(tput lines)

tmux split-window -t dot:vim -h

tmux send-keys -t dot:vim.left "vim" Enter
tmux send-keys -t dot:vim.right "ls -la && git st" Enter
tmux resize-pane -R 60 

# tmux split-window -t dot:vim -v

tmux attach -t dot:vim.right