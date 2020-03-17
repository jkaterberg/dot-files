#!/bin/bash
# changeVolume

# Arbitrary but unique message id
msgId="991049"

# Change the volume using alsa(might differ if you use pulseaudio)
pactl set-sink-volume @DEFAULT_SINK@ $@ 

# Query amixer for the current volume and whether or not the speaker is muted
volume="$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')"
mute="$(pactl list sinks | grep Mute | cut -d ':' -f 2)" 

if [[ $volume == 0 || "$mute" == " yes" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -r "$msgId" "Volume: muted" 
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -r "$msgId" \
    "Volume: ${volume}%" 
fi

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "changeVolume"
