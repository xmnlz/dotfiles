#!/bin/bash

status=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [ "$status" == "yes" ]; then
  bluetoothctl power off && rfkill block bluetooth
else
  rfkill unblock bluetooth && bluetoothctl power on
fi

