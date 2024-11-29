#!/bin/bash

# Create a new window
tmux new-window -t mobile:2

tmux send-keys -t mobile:2.0 '$HOME/Library/Android/sdk/emulator/emulator -avd Pixel_8_Pro_API_34' Enter


tmux select-window -t mobile:1

# Split the window into two panes vertically
tmux split-window -v
tmux select-layout even-horizontal
tmux resize-pane -R 30

# Run different commands in each pane
tmux send-keys -t mobile:1.0 'vi lib/main.dart' Enter
tmux send-keys -t mobile:1.1 'echo eshta | sudo -S sleep 10' Enter
tmux send-keys -t mobile:1.1 'flutter run --flavor staging' Enter

tmux select-pane -t mobile:1.0
