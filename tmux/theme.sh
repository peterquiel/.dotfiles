# color theme, take from nicknisi, see https://github.com/nicknisi/..
tm_color_active=colour82
tm_color_inactive=colour241
tm_color_feature=colour10
tm_color_music=colour10
tm_active_border_color=colour10

# default statusbar colors
# set-option -g status-bg colour0
set-option -g status-fg $tm_color_active
set-option -g status-bg default
#set-option -g status-attr default

# default window title colors
#set-window-option -g window-status-fg $tm_color_inactive
#set-window-option -g window-status-bg default

# active window title colors
#set-window-option -g window-status-current-fg $tm_color_active
#set-window-option -g window-status-current-bg default
set-window-option -g  window-status-current-format "#[bold]#I #W"

# pane number display
set-option -g display-panes-active-colour $tm_color_active
set-option -g display-panes-colour $tm_color_inactive

# clock
set-window-option -g clock-mode-colour $tm_color_active

tm_date="#[fg=$tm_color_inactive] %R %d %b"
tm_host="#[fg=$tm_color_feature,bold]#h"
tm_load="#[fg=$tm_color_feature,bold]#(uptime | cut -d ',' -f 2-)"
tm_cputemp="#[fg=$tm_color_feature,bold]#(sensors | awk '/Physical id 0:/ {print $4}')" 
tm_session_name="#[fg=$tm_color_feature,bold]$tm_icon #S"
set -g status-right $tm_cputemp' '$tm_load' '$tm_date' '$tm_host

set -g status-left-length 52
set -g status-right-length 451
set -g status-fg white
set -g status-bg colour234
#set -g window-status-activity-attr bold
#set -g pane-border-fg colour245
#set -g pane-active-border-fg colour39
#set -g message-fg colour16
#set -g message-bg colour221
#set -g message-attr bold
set -g status-left '#[fg=colour235,bg=colour252,bold] ❐ #S #[fg=colour252,bg=colour238,nobold]⮀#[fg=colour245,bg=colour238,bold] #(whoami) #[fg=colour238,bg=colour234,nobold]⮀'
set -g window-status-format "#[fg=white,bg=colour234] #I #W "
set -g window-status-current-format "#[fg=colour234,bg=colour39]⮀#[fg=colour25,bg=colour39,noreverse,bold] #I ⮁ #W #[fg=colour39,bg=colour234,nobold]⮀"
