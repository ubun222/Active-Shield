# Active-Shield
利用软路由openclash给NVIDIA Geforce Experience激活Shield选项的简易bat脚本
1. 想办法将将gfwsl.geforce.com加入国外流量规则里
2. 下载该仓库
3. 编辑Shield.bat 
```
timeout /T 2 /NOBREAK
TASKKILL /F  /IM "NVIDIA Geforce Experience.exe"
timeout /T 3 /NOBREAK
net stop NVDisplay.ContainerLocalSystem
netsh interface ip set address "WLAN 3" static  192.168.2.115 255.255.255.0 192.168.2.97 1
::                               网络名称           PC机的ip地址     子网掩码     软路由的ip地址
netsh interface ip set dns "WLAN 3" static 192.168.2.97
::                                    软路由的ip地址
net stop NvContainerLocalSystem
net start NVDisplay.ContainerLocalSystem
net start NvContainerLocalSystem
timeout /T 3 /NOBREAK
explorer C:\Users\Public\Desktop\GeForce Experience.lnk
timeout /T 20 /NOBREAK
netsh interface ip set address "WLAN 3" dhcp
netsh interface ip set dns "WLAN 3" dhcp
timeout /T 3 /NOBREAK
```
4. 以管理员权限运行
