#!/bin/bash
#pipes an ip camera into a virtual webcam

cam_url="http://192.168.1.166:8081"
v_output="/dev/video0"

ffmpeg -re -i $cam_url -vcodec rawvideo -pix_fmt yuv420p -f v4l2 $v_output
