#!/usr/bin/env sh

if pidof wlogout >/dev/null; then
  exit 0
else
  wlogout -b 2 -s
fi
