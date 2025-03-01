#!/bin/bash

# Split the window into two panes vertically
tmux split-window -v
tmux select-layout even-horizontal
tmux resize-pane -R 30

# Run different commands in each pane
tmux send-keys -t frontend:1.0 'vi .' Enter
tmux send-keys -t frontend:1.1 'npm run dev-staging' Enter

tmux select-pane -t frontend:1.0
