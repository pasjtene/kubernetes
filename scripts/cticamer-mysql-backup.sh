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

BACKUPPATH='/var/www/html/dailybackups'
MYSQL_HOST='localhost'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_PASSWORD='Jt.pas10'
DATABASE_NAME='cticamerv6'
BACKUPRETAINDAYS=9   ## Number of days to keep local backup copy

#################################################################