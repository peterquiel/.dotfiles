#!/usr/bin/env bash
dir="$HOME/projects/android-nanodegree/PopularMovies/app"
session="android"

tmux start-server

tmux new-session -c "$dir" -d -s "$session"

tmux split-window -d -v -p 30 -t 1 -c "$dir" 
tmux split-window -d -h -p 50 -t 2 -c "$dir"

tmux a -t "$session"
