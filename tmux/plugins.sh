# use git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm to install	tmux plugin manager
# Use prexi + I to install plugins after new plugins has been added.
#
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-yank'

run '~/.tmux/plugins/tpm/tpm'
