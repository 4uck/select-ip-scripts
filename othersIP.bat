@echo off
netsh interface ip set address "Wireless network" dhcp
netsh interface ip set dns "Wireless network" dhcp
echo "END OthersIP batnik"