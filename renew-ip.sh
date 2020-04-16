#!/bin/bash

## build for EdgeOS 2.0.6
## By superzerosec

OLD_IP=`/usr/bin/curl -s --retry 15 ifconfig.co`
echo "Renewing your IP address..."
/opt/vyatta/bin/vyatta-op-cmd-wrapper disconnect interface pppoe0 
/opt/vyatta/bin/vyatta-op-cmd-wrapper connect interface pppoe0
NEW_IP=`/usr/bin/curl -s --retry 15 ifconfig.co`
echo "Old IP: $OLD_IP"
echo "New IP: $NEW_IP"
