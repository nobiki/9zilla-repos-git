#!/bin/bash

if [ ! -e /bootstrap.lock ]; then
  /git-daemon.sh

  touch /bootstrap.lock
fi

/usr/bin/supervisord -n
