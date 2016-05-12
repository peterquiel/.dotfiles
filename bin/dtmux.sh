#!/usr/bin/env bash
dir="$HOME"
session="default_tmux"

tmux start-server

tmux new-session -A -c "$dir" -d -s "$session" -n "wiki" vi -c VimwikiIndex -c vsp 
tmux split-window -d -v -p 30 -t wiki.1 -c "$dir" 

tmux new-window -d -c "$dir" -n "dev_vi" vi 
tmux split-window -d -v -p 30 -t dev_vi.1 -c "$dir"

tmux new-window -d -c "$dir" -n "shell" 
#tmux select-window -t "wiki" 

tmux a -t "$session"
