#!/bin/bash
hostname >> info.txt
uname -a >> info.txt
uptime >> info.txt
uname -r >> info.txt
lscpu >> info.txt
free -h >> info.txt
ifconfig >> info.txt
df -h >> info.txt
#add log
echo "enter a log file"
read log
tail -n 5 $log | grep -i "error" >> info.txt
