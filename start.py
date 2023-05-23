import os
import random
import subprocess

os.environ['DISPLAY'] = ':0'

movies_dir = os.path.expanduser("/home/joshe/Videos")
video_files = []

# Get a list of all video files in the directory
for filename in os.listdir(movies_dir):
    if filename.endswith((".mp4", ".avi", ".mkv")):
        video_files.append(os.path.join(movies_dir, filename))

# Shuffle the list of video files
random.shuffle(video_files)

# Play the shuffled video files using VLC
for video_file in video_files:
    subprocess.call(["vlc", "--fullscreen", "--play-and-exit", "--no-qt-privacy-ask", video_file])
