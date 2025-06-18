#!/bin/sh
if [ "$1" = "cat" ]; then
  tail -f /dev/null
else
  exec java -jar app.jar "$@"
fi
