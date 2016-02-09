#/bin/bash
ifconfig eth1 192.168.10.1 up
dnsmasq -i eth1 --dhcp-range=192.168.10.100,192.168.10.200 \
--dhcp-boot={{ initramfs_file }} \
--enable-tftp --tftp-root={{ tftp_root }} -d -u root -p0 -K --log-dhcp --bootp-dynamic
