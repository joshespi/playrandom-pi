#!/bin/bash
find /home/pi/Videos/ -type f -exec vlc --one-instance --playlist-enqueue --playlist-autostart --fullscreen -LZ '{}' +

