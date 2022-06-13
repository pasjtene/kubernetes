[root@gocamer html]# less /usr/local/bin/scpremote.sh 
#ip and password are modified.. fake
#The script is used to backup script to a remote server, daily and weekly, 
#A cron job runs this script

#!/bin/bash


################################################################
##
##   MySQL Database and files backup Script
##   Written By: Santosh
##   Backup to cticamer.com
##
################################################################

export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=`date +"%d%b%Y"`
TODAYH=`date +%d%b%Y_%H-%M-%S`
password="HwsDNwJTBwTDw"
username="root"
Ip="51.75.161.197"
sshpass -p "$password" scp -r /var/www/html/dailybackups/$TODAY $username@$Ip:/var/www/html/vitaleplusbackups