#!/bin/sh

set -eu

LOG_DIR=/home/isucon/logs
echo "making $LOG_DIR ..."
mkdir -p $LOG_DIR

ACCESS_LOG=/var/log/nginx/access.log
SUFFIX=`date +%Y%m%d-%H%M%S`

## Rotate access logs
echo "copying and initializing $ACCESS_LOG ..."
cp $ACCESS_LOG $LOG_DIR/access_$SUFFIX.log
cat /dev/null > $ACCESS_LOG 

## Recompile the service
echo "making go webapp ..."
cd /home/isucon/isucari/webapp/go; make

## Restart the service
echo "restarting go webapp ..."
sudo systemctl restart isucari.golang.service
