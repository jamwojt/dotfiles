#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/projects ~/ ~/dotfiles -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    # Start a new session with window 1 as the base
    tmux new-session -s "$selected_name" -c "$selected" -d

    # Send 'activate' to window 1 (first window due to base-index)
    tmux send-keys -t "$selected_name:1" "activate" C-m
    tmux send-keys -t "$selected_name:1" "clear" C-m

    # Create a second window named 'terminal'
    tmux new-window -t "$selected_name:" -n terminal -c "$selected"

    tmux send-keys -t "$selected_name:2" "activate" C-m
    tmux send-keys -t "$selected_name:2" "clear" C-m

    # Select window 1 again
    tmux select-window -t "$selected_name:1"

    # Run nvim in window 1
    tmux send-keys -t "$selected_name:1" "nvim" C-m

    # Attach to the session
    tmux attach-session -t "$selected_name"
    exit 0
fi

# Create session if it doesn't exist
if ! tmux has-session -t="$selected_name" 2>/dev/null; then
    tmux new-session -ds "$selected_name" -c "$selected"
fi

# Attach or switch to it
if [[ -z $TMUX ]]; then
    tmux attach-session -t "$selected_name"
else
    tmux switch-client -t "$selected_name"
fi
