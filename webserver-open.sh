#!/usr/bin/env bash

v="open..."
RESPONSE="HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n${2:-"$v"}\r\n"
while { python /home/bzero01/workspaces/testgpio/open.py; sleep 3; echo -en "$RESPONSE"; } | nc -q 1 -l "${1:-8080}"; do
  echo "================================================"
done
