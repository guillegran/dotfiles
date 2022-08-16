[[ -f ~/.bashrc ]] && ~/.bashrc

export PATH=$PATH:$HOME/.local/bin
export EDITOR="nvim"
export TERMINAL="st"

# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Keeping home clean
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_STATE_HOME"/bash/history
export LEIN_HOME="$XDG_DATA_HOME"/lein
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

if [[ -z "${DISPLAY}" ]] && [[ "${XDG_VTNR}" -eq 1 ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || exec startx "$XINITRC"
fi

