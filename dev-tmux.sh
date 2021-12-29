#!/bin/sh

tmux new-session -d -s 'DEV'
tmux new-window -t $'DEV':1
tmux send-keys 'htop' C-m
tmux split-window -h 
tmux send-keys 'source venv/bin/activate' C-m 'jupyter-lab --port=8001' C-m
tmux split-window -v
tmux send-keys 'nvidia-smi -l 1' C-m
tmux -2 attach-session -d
