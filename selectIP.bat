
@echo off
SetLocal EnableDelayedExpansion

:: add current SSID str in file with regular expression
NETSH WLAN SHOW INTERFACE | findstr /r "^....SSID" > C:\log.txt

:: create name SSID for Yuzniy
set a=MTSRouter-8EB92C

:: transcription SSID name without SSID str in var of file
for /f "tokens=2 delims=: " %%A in (C:\log.txt) do (
	set "m=%%A"
)

:: run batnik with stat ip or dinamyc ip
if "%m%"=="%a%" (
	echo "It's Yuzniy"
	netsh interface ip set address name="Wireless network" static 192.168.1.40 255.255.255.0 192.168.1.1 1
	netsh interface ip set dns "Wireless network" static 8.8.8.8
	netsh interface ip add dns "Wireless network" 8.8.4.4
) else (
	echo "It's not Yuzniy"
	netsh interface ip set address "Wireless network" dhcp
	netsh interface ip set dns "Wireless network" dhcp
)
pause