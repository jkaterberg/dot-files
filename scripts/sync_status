#!/bin/bash

#Simple script that changes the colors of i3status to match the configuration in i3 config
sed -i '/color_good/c\color_good = "'$1'"' ~/.config/i3status/config
sed -i '/color_degraded/c\color_degraded = "'$2'"' ~/.config/i3status/config
sed -i '/color_bad/c\color_bad = "'$3'"' ~/.config/i3status/config
