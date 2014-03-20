#!/bin/bash

echo -n > log  #truncate
/bin/echo '[01]{,10}' '\\d+' '.*' '.*.*.*' '(?:[a-z]{,10}){,1000}' |
xargs -P6 -n1 /bin/sh -c 'text=$(python2 bench.py "$0"); echo "$text" | tee -a log'
