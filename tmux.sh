#!/bin/bash
tmux new-session -d -s rabbitmq
tmux rename-window 'rabbitmq'
tmux send-keys 'echo "pane 1"' C-m
tmux select-window -t rabbitmq:0
tmux split-window -h
tmux send-keys 'echo "pane 2"' C-m
tmux split-window -h
tmux send-keys 'echo "pane 3"' C-m
tmux split-window -h
tmux send-keys 'echo "pane 4' C-m
tmux select-layout even-horizontal
tmux select-window -t rabbitmq:01
tmux -2 attach-session -t rabbitmq
