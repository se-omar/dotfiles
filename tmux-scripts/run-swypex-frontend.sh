#!/bin/bash

# Create a new window
# tmux new-window -t backend:2 -c '~/work/source/next_dashboard'

# Split the window into two panes vertically
tmux split-window -v
tmux select-layout even-horizontal
tmux resize-pane -R 30

# Run different commands in each pane
tmux send-keys -t frontend:1.0 'vi .' Enter
tmux send-keys -t frontend:1.1 'npm run dev' Enter

tmux select-pane -t frontend:1.0
