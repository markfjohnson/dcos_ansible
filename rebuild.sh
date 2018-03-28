ssh root@server1 'koan --replace-self --server=192.168.1.110 --system=server1'
ssh root@server2 'koan --replace-self --server=192.168.1.110 --system=server2'
ssh root@server3 'koan --replace-self --server=192.168.1.110 --system=server3'
ssh root@server4 'koan --replace-self --server=192.168.1.110 --system=server4'
ssh root@server5 'koan --replace-self --server=192.168.1.110 --system=server5'
ssh root@server6 'koan --replace-self --server=192.168.1.110 --system=server6'
ssh root@server7 'koan --replace-self --server=192.168.1.110 --system=server7'
ssh root@server1 'reboot now'
sleep 5
ssh root@server2 'reboot now'
#sleep 5
ssh root@server3 'reboot now'
sleep 5
ssh root@server4 'reboot now'
sleep 5
ssh root@server5 'reboot now'
sleep 5
ssh root@server6 'reboot now'
sleep 5
ssh root@server7 'reboot now'
sleep 5

