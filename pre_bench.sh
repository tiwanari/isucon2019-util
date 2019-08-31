#!/bin/sh

set -eu

LOG_DIR=/home/ubuntu/logs
mkdir -p $LOG_DIR

ACCESS_LOG=/var/log/nginx/access.log
SUFFIX=`date +%Y%m%d-%H%M%S`

## Rotate access logs
mv $ACCESS_LOG $LOG_DIR/access_$SUFFIX.log

## Recompile the service
# cd path; make

## Restart the service
# sudo systemctl restart isubata.golang

## Run bench
# cd ~/isubata/bench
# OUT=$DIR/result_`date +%Y%m%d-%H%M%S`.json
# TARGET=ec2-13-112-148-180.ap-northeast-1.compute.amazonaws.com
# ./bin/bench -remotes=$TARGET -output $OUT
