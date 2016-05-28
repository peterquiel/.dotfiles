#!/usr/bin/env bash
dir="$HOME/projects/wescale"
session="default_tmux"

tmux start-server

tmux new-session -A -c "$dir" -d -s "$session" -n "wiki"
tmux split-window -d -v -p 30 -t wiki.1 -c "$dir" 

tmux new-window -d -c "$dir" -n "dev_vi"
tmux split-window -d -v -p 30 -t dev_vi.1 -c "$dir"

tmux new-window -d -c "$dir" -n "shell" 
#tmux select-window -t "wiki" 

tmux send -t wiki vi Space -c Space VimwikiIndex Space -c Space vsp ENTER
tmux send -t dev_vi vi Enter

tmux a -t "$session"
