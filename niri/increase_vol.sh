pactl set-sink-volume \@DEFAULT_SINK@ +5%
dunstify "Volume: " -h int:value:"`pamixer --sink \`pactl list sinks short | grep RUNNING | awk '{print $1}'\` --get-volume`" --urgency=low -a " " -t 750 -i "/home/maoe/.config/dunst/default_icon.jpg"
