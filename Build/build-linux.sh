#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR
cmake $SCRIPT_DIR/..
cd $SCRIPT_DIR
make
./SystemMonitor
