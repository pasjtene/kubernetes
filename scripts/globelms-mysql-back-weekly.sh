[root@gocamer centos]# less /usr/local/bin/mysql-back-weekly.sh

#!/bin/bash

################################################################
##
##   MySQL Database backup Script
##   Written By: Santosh
##   Website: http://www.looklinux.com
##
################################################################

export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=`date +"%d%b%Y"`
TODAYH=`date +%d%b%Y_%H-%M-%S`

################################################################
################## Update below values  ########################

BACKUPPATH='/var/www/html/weeklybackup'
MYSQL_HOST='localhost'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_PASSWORD='pharma3007/'
DATABASE_NAME='globelmsv4'
BACKUPRETAINDAYS=6   ## Number of days to keep local backup copy

#################################################################

mkdir -p ${BACKUPPATH}/${TODAY}
mkdir -p ${BACKUPPATH}/${TODAY}/${TODAYH}
echo "Backup started for database - ${DATABASE_NAME}"

mysqldump -h ${MYSQL_HOST} \
   -P ${MYSQL_PORT} \
   -u ${MYSQL_USER} \
   -p${MYSQL_PASSWORD} \
   ${DATABASE_NAME} | gzip > ${BACKUPPATH}/${TODAY}/${TODAYH}/${DATABASE_NAME}-${TODAY}.sql.gz

if [ $? -eq 0 ]; then
  echo "Database backup successfully completed"
else
  echo "Error found during backup"
fi

## Remove backups older than {BACKUPRETAINDAYS} days

DBDELDATE=`date +"%d%b%Y" --date="${BACKUPRETAINDAYS} days ago"`