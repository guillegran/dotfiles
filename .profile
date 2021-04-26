[[ -f ~/.bashrc ]] && ~/.bashrc

export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts
export EDITOR="nvim"
export TERMINAL="st"
export XDG_CONFIG_HOME="$HOME/.config"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx
fi

