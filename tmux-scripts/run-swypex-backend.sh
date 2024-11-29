#!/bin/bash

# Create a new window
tmux new-window -t backend:2 -c '~/work/source/backend'

# Split the window into two panes vertically
tmux split-window -v
tmux split-window -v
tmux select-layout even-horizontal

# Run different commands in each pane
tmux send-keys -t backend:2.0 'temporal server start-dev' Enter
tmux send-keys -t backend:2.1 './gradlew api:bootRun' Enter
tmux send-keys -t backend:2.2 './gradlew graphql-api:bootRun' Enter

tmux select-window -t backend:1
tmux send-keys -t backend:1 'vi .' Enter
