#!/usr/bin/env bash

v="<html><body><button onclick=\"document.getElementsByTagName('button')[0].innerHTML = 'unlocking...'; document.getElementsByTagName('img')[0].src='http://192.168.1.103:19999';this.onclick='';setTimeout(function(){document.location.reload();}, 3000);\" style=\"font-size:5em;width:100%;height:100%\">&#128273; Unlock</button><img src=\"\"></body></html>"
RESPONSE="HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\n${2:-"$v"}\r\n"
while { echo -en "$RESPONSE"; } | nc -q 2 -l "${1:-8080}"; do
  echo "================================================"
done
