[root@gocamer html]# less /usr/local/bin/scpremote.sh 

#!/bin/bash
#ip and password are modified.. fake

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
Ip="5010.7500.1601.1097"
sshpass -p "$password" scp -r /var/www/html/dailybackups/$TODAY $username@$Ip:/var/www/html/vitaleplusbackups