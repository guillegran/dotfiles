#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
if [[ $(xrandr --query | grep " connected" | cut -d" " -f1) == *"HDMI-2"* ]]; then
	m="HDMI-2"
else
	m="VGA-1"
fi

echo m

MONITOR=$m polybar mybar &

echo "Polybar launched..."
