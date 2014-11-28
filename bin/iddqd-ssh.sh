#!/bin/sh

if [[ "$(ifconfig | grep 10.17.8)" ]]; then
    echo "On geo lan, connecting directly..."
    ssh iddqd.nfit.au.dk -t 'bin/tmux-dev.sh'
else
    echo "Outside geo lan, connecting through fresh-horse..."
    ssh fh.cs.au.dk -t 'ssh iddqd.nfit.au.dk -t "bin/tmux-dev.sh"'
fi