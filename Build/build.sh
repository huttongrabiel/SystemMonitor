#!/bin/bash

#FIXME. This needs a generic path not a specific local path
cd /home/whuty/fun/SystemMonitor
cmake .
make
./SystemMonitor
