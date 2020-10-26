#!/usr/bin/zsh

coproc bluetoothctl
echo -e 'disconnect B8:F6:53:FD:D9:7C\nexit' >&p
output=$(cat <&p)
echo $output
