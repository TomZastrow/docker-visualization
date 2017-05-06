#!/bin/bash

Xvfb -screen 0 1024x768x24+32 & 
x11vnc & 
fluxbox & 
/opt/novnc/utils/launch.sh --vnc localhost:5900 &

while true; do
sleep 60; 
echo "Still alive at:"; 
date;
done
