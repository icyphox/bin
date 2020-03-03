#!/usr/bin/env bash

cap=$(< /sys/class/power_supply/BAT0/capacity)
status=$(< /sys/class/power_supply/BAT0/status)

printf '%s%% [%s]\n' $cap $status 
