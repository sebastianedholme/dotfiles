#!/bin/sh

export PATH="$PATH:$HOME/.scripts:$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin"
export EDITOR="nvim"
export TERMINAL="st"
export BROWsER="firefox"
export READER="zathura"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi

