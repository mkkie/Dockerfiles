#! /bin/bash

sudo service ssh start

if [ -z "$1" ]; then
  exec /bin/bash
else
  exec $@
fi
