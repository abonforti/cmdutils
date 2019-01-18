#!/bin/bash

LOGTYPE=$1
DEST=$2
CONSOLE_DATEFORMAT=`/bin/date +%Y%m%d`
ACCESS_DATEFORMAT=`/bin/date +%Y-%m-%d`

if [ $1 = "-c" ]; then
	ssh $DEST tail -f /app/hybris/log/tomcat/console-$CONSOLE_DATEFORMAT.log
else
	ssh $DEST tail -f /app/hybris/log/tomcat/access.$ACCESS_DATEFORMAT.log
fi
