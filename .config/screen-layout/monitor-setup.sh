#!/bin/bash

internal=eDP1
external=DP1

if xrandr | grep --quiet "^$external connected" ; then
	xrandr --output HDMI1 --off --output VIRTUAL1 --off --output DP1 --primary --mode 3840x2160 --pos 0x0 --scale 2x2 --rotate normal --output eDP1 --mode 3840x2160 --pos 7680x2160 --rotate normal --output DP2 --off
else
	xrandr --output HDMI1 --off --output VIRTUAL1 --off --output DP1 --off --output eDP1 --mode 3840x2160 --pos 7680x2160 --rotate normal --output DP2 --off
fi
