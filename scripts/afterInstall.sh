#!/bin/bash
APP_DIR=/opt/test

cd $APP_DIR
npm install
if [ $? -eq 1 ] || [ $? -eq 243 ]
then 
    exit 1
fi
exit 0