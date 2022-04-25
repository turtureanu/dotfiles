#!/usr/bin/env bash

# Usage: resize.sh <direction> [<px or ppt size>]
#
# Resize sway windows with the keyboard similar to resizing with the mouse:
#
#      "left" goes left, "down" goes down, etc.
#
# Floating windows are resized from the bottom right corner.
#
# Keybindings example:
#
#      # "$mod" to move to a window
#      bindsym $mod+Left  focus left
#      bindsym $mod+Down  focus down
#      bindsym $mod+Up    focus up
#      bindsym $mod+Right focus right
#
#      # "$mod+Shift" to move the window
#      bindsym $mod+Shift+Left  move left
#      bindsym $mod+Shift+Down  move down
#      bindsym $mod+Shift+Up    move up
#      bindsym $mod+Shift+Right move right
#
#      # "$mod+Control" to resize the window
#      bindsym $mod+Control+Left  $exec i3-resize.sh left  3 px or 3 ppt
#      bindsym $mod+Control+Down  $exec i3-resize.sh down  3 px or 3 ppt
#      bindsym $mod+Control+Up    $exec i3-resize.sh up    3 px or 3 ppt
#      bindsym $mod+Control+Right $exec i3-resize.sh right 3 px or 3 ppt
#
# Links:
#      https://gist.github.com/willemw12 (author of original script)
#      https://i3wm.org

DIR="${1:?direction argument is missing}"
shift

case "${DIR,,}" in
  left)  swaymsg --quiet resize shrink right "$@" || swaymsg --quiet resize grow left "$@";;
  down)  swaymsg --quiet resize grow down "$@"    || swaymsg --quiet resize shrink up "$@";;
  up)    swaymsg --quiet resize shrink down "$@"  || swaymsg --quiet resize grow up "$@";;
  right) swaymsg --quiet resize grow right "$@"   || swaymsg --quiet resize shrink left "$@";;
  *) exit 3
esac
