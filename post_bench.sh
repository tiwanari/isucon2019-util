#!/bin/sh

set -eu

ACCESS_LOG=/var/log/nginx/access.log
LOG_DIR=/home/isucon/logs

echo "copying $ACCESS_LOG ..."
cp $ACCESS_LOG $LOG_DIR/access.log
