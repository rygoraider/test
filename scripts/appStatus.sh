#!/bin/bash
export HOME=/home/siteserver100
APP_NAME=test

output=$(pm2 status | grep $APP_NAME)
if [[ $output = *"stopped"* ]] || [[ $output = *"errored"* ]] || [[ $output = *"timeout"* ]] 
then
    exit 1
fi
exit 0    