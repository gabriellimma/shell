#!/usr/bin/env bash
#
# first parameter greater than 10.
clear;
NUM=10;
clear;
[ "$1" -gt $NUM ] && echo "Script name: $0\nPID: $$" || echo "$1 isn't gt $NUM"
