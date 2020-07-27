#!/usr/bin/env bash

PW_DIR=~/passwords
pass="$(pw -l | dmenu)"
if [[ -z "$pass" ]]; then
    exit
else
    pw -c "$pass"
fi
