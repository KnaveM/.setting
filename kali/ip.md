## 设置静态ip
. service networking stop
. vim /etc/network/interfaces
添加以下内容
'''
auto eth0
#iface eth0 inet dhcp  # dhcp
iface eth0 inet static
address 192.168.1.3
netmask 255.255.255.0
gateway 192.169.1.1
'''
. 设置DNS
. vim /etc/resolv.conf
'''
nameserver 192.168.1.1
'''
. service networking restart


## 查看路由
route -n
netstat -r
