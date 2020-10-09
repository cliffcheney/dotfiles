#!/bin/sh

set -e

if tmux has-session -t=dot 2> /dev/null; then
      tmux attach -t dot
        exit
fi

tmux new-session -d -s dot -n vim -x $(tput cols) -y $(tput lines)

tmux attach -t dot:vim.right
