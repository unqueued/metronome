#!/bin/sh

DEFAULTINTERVAL=20
LOG=worklog.txt
MESSAGE=""

if [ ! -z "$1" ];
	then
		MINUTES=$1
	else
		MINUTES=$DEFAULTINTERVAL
fi

# Redirect STDOUT to log file, use STDERR for user output
exec >> $LOG

echo "`date`: Starting..."
sleep $(($MINUTES * 60))
echo "taking a break at `date`"
say "Taking a break"
