sudo brctl addif br0 eth0
sudo route add -net 192.168.0.0 netmask 255.255.255.0 br0
