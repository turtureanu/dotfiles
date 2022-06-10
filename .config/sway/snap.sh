#!/bin/bash

# Display Dimensions
DISPLAY_DIMENSIONS=$(swaymsg -t get_outputs | jq '.. | select(.focused?) | .current_mode')
DISPLAY_WIDTH=$(echo $DISPLAY_DIMENSIONS | jq '.width')
DISPLAY_HEIGHT=$(echo $DISPLAY_DIMENSIONS | jq '.height')

# Window Coordinates and Dimensions
WINDOW_GEOMETRY=$(swaymsg -t get_tree | jq '.. | select(.focused?) | .rect')
WINDOW_X=$(echo $WINDOW_GEOMETRY | jq '.x')
WINDOW_Y=$(echo $WINDOW_GEOMETRY | jq '.y')
WINDOW_WIDTH=$(echo $WINDOW_GEOMETRY | jq '.width')
WINDOW_HEIGHT=$(echo $WINDOW_GEOMETRY | jq '.height')

# Set bar width and height
if [ -z $2 ];then
	BAR_WIDTH=0
	BAR_HEIGHT=0
else
	BAR_WIDTH=$2
	BAR_HEIGHT=$3
fi

case $1 in
	"")
		printf 'Usage: snap up|down|left|right [BAR WIDTH [px]] [BAR HEIGHT [px]]\n\nSnaps a window to an edge of the screen\n\nThe bar width and bar height are taken into account\nwhen calculating the final window position\n'
		;;
	up)
		swaymsg move up $(($WINDOW_Y-$BAR_HEIGHT))
		;;
	down)
		swaymsg move down $(($DISPLAY_HEIGHT-$WINDOW_Y-$WINDOW_HEIGHT-$BAR_HEIGHT))
		;;
	left)
		swaymsg move left $(($WINDOW_X-$BAR_WIDTH))
		;;
	right)
		swaymsg move right $(($DISPLAY_WIDTH-$WINDOW_X-$WINDOW_WIDTH-$BAR_WIDTH))
esac



