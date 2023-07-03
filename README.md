# playrandom-py

The initial concept was inspired by my grandmother, who faced challenges operating her TV due to her dementia. To alleviate her difficulties, I decided to set up a Raspberry Pi device that stored all her favorite shows. This way, she only needed to handle the task of turning the TV on and off.

Later on, we expanded the use of this setup to assist our son with Autism in managing the TV he used. Additionally, we integrated choices and functionalities from the repository found at https://github.com/Provo-City-School-District/pcsd-tvcontrol-pi. We modified the commands to utilize CEC controls for switching inputs on the TV.


my current crontab schedule for the TV
```*/5 * * * * /bin/bash /home/joshe/tv_control.sh```

## Changes
### 1.01
added a simple bash version that simply grabs all files in the Videos folder on a raspberry pi and load them into VLC to play randomly.

tv_control file requires cec-utils, and requires the tv to have cec capabilities enabled. each brand has a slightly different name for cec. tv_control file that does 2 things. 
- between 22:00-6:00 it will put the TV on standby
- runs an "as" command to the tv to set the input to the device.

I run the TV control script every 5 minutes since my son likes to change the TV input.
### 1.0
simple python script that grabs avi,mkv,mp4 files from the Videos folder and puts them into VLC playing randomly.