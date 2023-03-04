timeout /T 20 /NOBREAK
TASKKILL /F  /IM "NVIDIA Geforce Experience.exe"
timeout /T 2 /NOBREAK
net stop NVDisplay.ContainerLocalSystem
netsh interface ip set address "WLAN 3" static  192.168.2.115 255.255.255.0 192.168.2.97 1
netsh interface ip set dns "WLAN 3"  static 8.8.4.4
::net stop NvContainerLocalSystem
net start NVDisplay.ContainerLocalSystem
::net start NvContainerLocalSystem
timeout /T 8 /NOBREAK
explorer C:\Users\Public\Desktop\GeForce Experience.lnk
timeout /T 20 /NOBREAK
netsh interface ip set address "WLAN 3" DHCP
netsh interface ip set dns "WLAN 3" DHCP
timeout /T 3 /NOBREAK
