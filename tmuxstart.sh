#!/bin/sh

set -e

if tmux has-session -t=dot 2> /dev/null; then
      tmux attach -t dot
        exit
fi

tmux new-session -d -s dot -n vim -x $(tput cols) -y $(tput lines)

tmux split-window -t dot:vim -h

tmux send-keys -t dot:vim.left "nvim ." Enter
## tmux send-keys -t dot:vim.right "ls -la && echo -e '\n' && pwd && echo -e '\n' && git status" Enter
tmux send-keys -t dot:vim.right "git status" Enter
tmux resize-pane -R 20 

tmux split-window -t dot:vim -v "btop"
tmux resize-pane -D 10

tmux attach -t dot:vim.left
