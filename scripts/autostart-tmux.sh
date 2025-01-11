#!/usr/bin/bash
if [[ $(tmux list-sessions) ]]; then
    tmux attach
else
    tmux new-session "fastfetch; $SHELL"
fi
