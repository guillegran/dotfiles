[[ -f ~/.bashrc ]] && ~/.bashrc

export PATH=$PATH:$HOME/.local/bin
export EDITOR="nvim"
export TERMINAL="st"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"

export HISTFILE="$XDG_STATE_HOME"/bash/history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx
fi

