#!/bin/bash
nmcli connection delete eduroam

nmcli c a type wifi con-name eduroam ifname wlp2s0 ssid \
    "eduroam" -- wifi-sec.key-mgmt wpa-eap 802-1x.eap peap \
    802-1x.identity "quentin.gerard.hacourt@vub.be" 802-1x.phase2-auth MSCHAPV2

nmcli connection up eduroam --ask
