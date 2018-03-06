#!/bin/bash
export HOME=/home/siteserver100
APP_NAME=test

pm2 start $APP_NAME
if [ $? -eq 1 ]
then 
    exit 1
fi
exit 0