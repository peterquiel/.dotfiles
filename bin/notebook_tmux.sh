#!/usr/bin/env bash
# creates a default tmux session with a wiki in the first window and a vi|cmd setup in the second window.
dir="$HOME"
session="default_tmux"

tmux start-server

tmux new-session -A -c "$dir" -d -s "$session" -n "wiki"
tmux new-window -d -c "$dir" -n "dev_vi"
tmux new-window -d -c "$dir" -n "shell" 

# starting command this way in the windows in order to make zsh start before executing the commands.
# Had problems with the scroll locks in vim.
tmux send -t wiki vi Space -c Space VimwikiIndex Space -c Space vsp ENTER
tmux send -t dev_vi vi Enter

tmux a -t "$session"
# creates a default tmux session with a wiki in the first window and a vi|cmd setup in the second window.

