TASKKILL /IM "NVIDIA Geforce Experience.exe"
timeout /T 1 /NOBREAK
net stop NVDisplay.ContainerLocalSystem
netsh interface ip set address "WLAN 3" static  192.168.2.115 255.255.255.0 192.168.2.97 1
net start NVDisplay.ContainerLocalSystem
explorer C:\Users\Public\Desktop\GeForce Experience.lnk
timeout /T 5 /NOBREAK
netsh interface ip set address "WLAN 3" static  192.168.2.115 255.255.255.0 192.168.2.99 1
netsh interface ip set dns "WLAN 3" static 192.168.2.99 
timeout /T 5 /NOBREAK
