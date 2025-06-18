#!/bin/sh

if [ "$1" = "cat" ]; then
  exec tail -f /dev/null
fi

exec java -jar app.jar "$@"
