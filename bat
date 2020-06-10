#!/usr/bin/env bash

cap="$(apm -l)"
is_charging="$(apm -a)"

status="discharging"

# stolen from nerd
health() {
    sym="$1"
    for i in {0..4}
    do
        if [[ $i -le $(( cap/20 )) ]]; then
            printf '%s' "#[fg=colour1]$sym "
        else
            printf '%s' "#[fg=colour12]$sym "
        fi
    done
    echo
}

if [[ "$1" == "-q" ]]; then
    if [[ "$is_charging" -eq 1 ]]; then
        health +
    else
        health • 
    fi
else
    [[ "$is_charging" -eq 1 ]] &&
        status="charging"
    printf '%s%% [%s]\n' $cap $status 
fi

