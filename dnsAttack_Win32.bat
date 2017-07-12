@echo on


REM PROGRAM DEVELOPED BY:
REM Cyrus Majd
REM in contribution to HHSCST (Holmdel High School Cyber Security Team)

echo The following is the DNS Cache > dnsData.txt

ipconfig /displaydns >> dnsData.txt



echo The following is the result after the flush, you should see nothing: >> 

dnsData.txt

ipconfig /flushdns >> dnsData.txt
echo -=-=-=-=-=-=-=-=- >> dnsData.txt


echo Ok now to modify the hosts file


REM Alright this line right here basically overwrites your hosts

echo . > C:\Windows\System32\Drivers\etc\hosts



REM And these bad boys knock up your computer’s connections. You can assign something like www.google.com 
REM to redirect to your 
DNS server or send it though a man-in-the-middle attack or something


127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4 > C:\Windows\System32\Drivers\etc\hosts

::1             localhost localhost.localdomain localhost6 localhost6.localdomain6 >> C:\Windows\System32\Drivers\etc\hosts

192.168.0.20    www.example.domain >> C:\Windows\System32\Drivers\etc\hosts

1.2.3.4         www.example.domain >> C:\Windows\System32\Drivers\etc\hosts



REM Note that the IPs above are completely made up - just change them.
REM DONT USE THIS PROGRAM FOR EVIL, even if its like really tempting. Just use it on your own computer 
REM FOLLOW THE ETHICAL HACKER CODE BRO!