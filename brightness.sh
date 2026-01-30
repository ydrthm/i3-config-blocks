#!/bin/bash

# Handle the mouse scroll buttons
if [ "$BLOCK_BUTTON" -eq 4 ]; then
    brightnessctl set +5% > /dev/null
elif [ "$BLOCK_BUTTON" -eq 5 ]; then
    brightnessctl set 5%- > /dev/null
fi

# Calculate and print the percentage for the bar
current=$(brightnessctl g)
max=$(brightnessctl m)
percent=$((current * 100 / max))

echo "󰃠 $percent%"
