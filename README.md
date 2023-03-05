### Active-Shield
利用旁路由openclash给NVIDIA Geforce Experience激活Shield选项的简易bat脚本
1. 想办法将将gfwsl.geforce.com加入国外流量规则里
2. 下载该仓库
3. 编辑Shield.bat 
* 将WLAN 3改成PC的网络名称
* 将192.168.2.115改成PC的IP
* 将192.168.2.97改成旁路由IP
```
timeout /T 20 /NOBREAK
TASKKILL /F  /IM "NVIDIA Geforce Experience.exe"
timeout /T 2 /NOBREAK
net stop NVDisplay.ContainerLocalSystem
netsh interface ip set address "WLAN 3" static  192.168.2.115 255.255.255.0 192.168.2.97 1
netsh interface ip set dns "WLAN 3"  static 8.8.4.4
net start NVDisplay.ContainerLocalSystem
timeout /T 8 /NOBREAK
explorer C:\Users\Public\Desktop\GeForce Experience.lnk
timeout /T 20 /NOBREAK
netsh interface ip set address "WLAN 3" DHCP
netsh interface ip set dns "WLAN 3" DHCP
timeout /T 3 /NOBREAK
```
4. 以管理员权限运行


### 在Geforce Experience Shield添加关机捷径
1. 将C:\Windows\System32\shutdown.exe复制到桌面
2. 右键桌面的shutdown.exe
3. 属性-兼容性-以管理员身份运行，并创建快捷方式
4. 桌面新建并编辑shutdown.bat
```
explorer C:\Users\***UserName***\Desktop\shutdown.lnk
```
4. 在Shield游戏栏中添加该bat脚本

