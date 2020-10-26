#!/bin/bash

coproc bluetoothctl

# power on
echo -e 'power on' >&${COPROC[1]}
output=$(cat <&${COPROC[0]})
echo $output
# agent on
echo -e 'agent on' >&${COPROC[1]}
output=$(cat <&${COPROC[0]})
echo $output
# default-agent
echo -e 'default-agent' >&${COPROC[1]}
output=$(cat <&${COPROC[0]})
echo $output
# scan on
echo -e 'scan on' >&${COPROC[1]}
output=$(cat <&${COPROC[0]})
echo $output
