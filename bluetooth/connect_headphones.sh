#!/usr/bin/zsh

coproc bluetoothctl
echo -e 'power on\nagent on\ndefault-agent\nscan on\nconnect B8:F6:53:FD:D9:7C\nexit' >&p
output=$(cat <&p)
echo $output
