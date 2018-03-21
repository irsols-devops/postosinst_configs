#!/bin/bash
ip addr | grep -i broadcast | awk '{ print $2 }'| sed 's/:/\ /g' | head -1 > /tmp/interface
ip add | grep ether | head -1 | awk {'print $2'} | sed  's/://g' > /tmp/pri_mac
pri_if_mac=`cat /tmp/pri_mac`
# We'll use last 4 digits of MAC address to append to hostname for identification
mac_append=`cat /tmp/pri_mac | tail -c 6`
interface=`cat /tmp/interface`
#echo "network --bootproto=dhcp --device=$interface --nodns --nameserver=8.8.8.8 --noipv6 --activate" >/tmp/network.ks
hostnamectl set-hostname "FogHiveNode-$mac_append.local"
echo "nameserver 10.10.1.1" >> /etc/resolv.conf
echo "search irsols.com local" >> /etc/resolv.conf
