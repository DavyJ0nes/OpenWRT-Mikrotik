#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

dnspid=$(pgrep dnsmasq)

echo "DNSMASQ PID = " $dnspid

if [[ $dnspid != "" ]]; then
  kill $dnspid 
fi

{{ tftp_root }}/{{ load_script }}
