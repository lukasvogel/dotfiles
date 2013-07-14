#!/bin/sh
echo "starting utility tmux session"

SESSION=utility

tmux has-session -t $SESSION
if [ $? != 0 ]
then
    # Create new session, name it, name the window, detach
    tmux new-session -s $SESSION -n misc -d

    tmux send-keys -t $SESSION 'mutt' C-m   # process in first pane
    tmux split-window -h -p 55 -t $SESSION  # horizontal split
    tmux select-pane -t $SESSION:1.1        # select first pane
    tmux split-window -v -p 50 -t $SESSION  # create a pane below first pane
    tmux send-keys -t $SESSION 'ncmpc' C-m  # process in second pane
    tmux split-window -v -p 50 -t $SESSION  # create a pane below second pane
    tmux send-keys -t $SESSION 'irssi.sh' C-m  # process in third pane
    tmux select-pane -t $SESSION:1.1        # select first pane
    #tmux select-pane -t $SESSION:1.4        # select fourth pane
fi
tmux attach -t $SESSION
