@echo off
netsh interface ip set address name="Wireless network" static 192.168.1.40 255.255.255.0 192.168.1.1 1
netsh interface ip set dns "Wireless network" static 8.8.8.8
netsh interface ip add dns "Wireless network" 8.8.4.4
echo "END statIP batnik"