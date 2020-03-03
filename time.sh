#!/usr/bin/env bash

fg="$(xres color15)"
light="$(xres color8)"

raw_date="$(date +"%a, %d %b" | tr A-Z a-z)"
raw_time="$(date +%I:%M)"

time="%{F$light}time %{F$fg}$raw_time"
date="%{F$light}date %{F$fg}$raw_date"

while getopts dtn options
do
	case $options in
		d)
			printf "%s\n" "$date"
			;;
		t)
			printf "%s\n" "$time"
            ;;
        n)
            printf "%s\n" "$raw_date"
            printf "%s\n" "$raw_time" 
	esac
done
