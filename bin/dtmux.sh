#!/bin/bash
dir="$HOME/projects/wescale"
session="default_tmux"

tmux start-server

tmux new-session -A -c "$dir" -d -s "$session" -n "wiki" 
tmux new-window -d -c "$dir" -n "dev_vi"
tmux new-window -d -c "$dir" -n "shell" 
#tmux select-window -t "wiki" 

tmux send -t wiki vi Space -c Space VimwikiIndex Space -c Space vsp ENTER
tmux send -t dev_vi vi Enter

tmux a -t "$session"
