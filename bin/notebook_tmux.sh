#!/usr/bin/env bash
# creates a default tmux session with a wiki in the first window and a vi|cmd setup in the second window.

dir="$HOME/local/lampstack-5.6.20-0/apache2/htdocs"
session="default_tmux"

tmux start-server

tmux new-session -A -c "$dir" -d -s "$session" -n "wiki" vi -c VimwikiIndex -c vsp 
tmux new-window -d -c "$dir" -n "dev_vi" vi 
tmux new-window -d -c "$dir" -n "shell" 

#tmux select-window -t "wiki" 

tmux a -t "$session"
# creates a default tmux session with a wiki in the first window and a vi|cmd setup in the second window.

