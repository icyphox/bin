#!/usr/bin/env bash

[[ "$1" == "r" ]] && {
    doas pkill wpa_supplicant
    doas wpa_supplicant -i wlp2s0 -B -c /etc/wpa_supplicant.conf
}

[[ "$1" == "n" ]] && {
    doas wpa_cli -i wlp2s0 select_network "$2"
    doas dhcpcd wlp2s0
}

[[ "$1" == "l" ]] &&
    doas wpa_cli -i wlp2s0 list_networks

