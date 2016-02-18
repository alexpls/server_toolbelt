#!/bin/bash
CURRENT=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=80

if [ -z "$SERVER_ADMIN_EMAIL" ] ; then
  echo "Set your SERVER_ADMIN_EMAIL variable"
  exit
fi

if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    sendmail -v $SERVER_ADMIN_EMAIL << EOF
Subject: Disk usage critical on $(hostname)
Your root partition remaining free space is critically low. Used: $CURRENT%
EOF
fi
