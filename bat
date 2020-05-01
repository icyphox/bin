#!/usr/bin/env bash

cap="$(apm -l)"
is_charging="$(apm -a)"

status="discharging"
[[ "$is_charging" -eq 1 ]] &&
    status="charging"
printf '%s%% [%s]\n' $cap $status 
