#!/bin/bash

nmcli connection add \
 type wifi con-name "eduroam" ifname wlp3s0 ssid "eduroam" -- \
 wifi-sec.key-mgmt wpa-eap 802-1x.eap ttls \
 802-1x.phase2-auth mschapv2 802-1x.identity "r0652542@ucll.be"
