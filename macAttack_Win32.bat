@echo off


REM PROGRAM DEVELOPED BY:
REM Cyrus Majd
REM in contribution to HHSCST (Holmdel High School Cyber Security Team)

ipconfig /flushdns

netsh interface ip delete arpcache

arp -d -a



REM This deletes the persistent routes only

reg delete HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\PersistentRoutes



REM This deletes all static routes

route delete 10.*
route delete 192.*
netsh interface ip delete destinationcache


REM This adds your new “Zombie” persistent route (Broadcast)

route add -p 255.255.255.255 mask 255.255.255.255 192.168.1.1



REM This adds your new “Zombie” static route (Broadcast)

route add 255.255.255.255 mask 255.255.255.255 192.168.1.1



REM This is the fun part: BLAST 70,000 RANDOM PACKETS IN DIFFERENT DIRECTIONS!

ping protocol.example.domain



REM outro

echo RIP

quit