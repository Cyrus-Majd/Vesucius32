+++++++++++++++++++++++
+Vesucius32 Malware(s)+
+++++++++++++++++++++++

Developed by

Cyrus Majd

In contribution to
~ =============================================== ~
` -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- `
` #     # #     #  #####   #####   #####  ####### `
` #     # #     # #     # #     # #     #    #    `
` #     # #     # #       #       #          #    `
` ####### #######  #####  #        #####     #    `
` #     # #     #       # #             #    #    `
` #     # #     # #     # #     # #     #    #    `
` #     # #     #  #####   #####   #####     #    `
` -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- `
~ =============================================== ~

THE HOLMDEL HIGH SCHOOL CYBER SECURITY TEAM

====================================================
====================================================

DISCLAIMER:
    Vesucius32 was made with the intention to have a good laugh and was NOT MADE FOR MALICIOUS USE.
Do NOT use Vesucius32 for any attacks on property that you aren't sure is entirely yours. Acknowledge
the fact that Vesucius32 is designed to be DANGEROUS, and it can seriously mess up your computer's
networking capabilities. I'm not liable for any misuse of these codes, and I'm uploading them for research
purposes.

OVERVIEW:
    Vesucius32 is a relativley simple malware that targets two main networking features on the victim's machine.
The first of these features is the DNS table. DNS tables store data on IP addresses correlated with URLs (ex. One of
Google's servers is 8.8.8.8, but you obviously type out the URL in letters when you search in the URL box.). Vesucius32
targets and tampers with these tables by changing the current IP address linked to (for example) HTTPS://www.Google.com
to some other IP address (like a privatley owned FTP server or a different website, etc.). This way, no matter what a 
victim does, they will always go to that specific IP address when they type in google.com (in this example) into any of 
their browsers. It's pretty spooky, I know.
    Vesucius32 also performs another type of attack on a victim machine, because why not? I very creativley decided to
call these next set of attacks "macAttacks", since it both sounded cool and I made it at 3 AM so I was very tired. Unlike
the previous attack code that pretty much only harmed one vicim's machine, this second attack annoys everyone on a LAN
shared with a victim. By deleting all current routes and making every packet go through a broadcast request (essentially
spamming everyone in the LAN), a simple ping can cloud up lots of internet traffic. Add an infinite loop to this living
nightmare and you got an attacked computer that literally won't ever shut it. Hopefully a sensible router will eventually
kick the victim offline to prevent more useless spam, and you'll catch the victim dumbfounded.
    A small exemplary caller program, Caller_Win32, serves as a sort of installation program, downloading the malwares
via FTP to the victim's machine.

BEFORE YOU LAUNCH(Linux):
   Note that for every shellscript in Vesucius32 (dnsAttack_LinuxShell.txt & macAttack_LinuxShell.txt), you MUST convert
the files to a shellscript AND make it executable via typing in "chmod 777 FILENAME", or else it won't work. Try adding
some junk in the codes as well to make it harder for antivirus softwares to read it.

BEFORE YOU LAUNCH(Windows):
   For Windows, configuring Caller_Win32.bat and executing it should be the only thing you need to do, unless you choose
to manually import the malwares into your victim machine rather than downloading them via FTP.