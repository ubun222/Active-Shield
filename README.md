# Active-Shield
利用软路由openclash给NVIDIA Geforce Experience激活Shield选项的简易bat脚本
1. 想办法将将gfwsl.geforce.com加入国外流量规则里
2. 下载该仓库
3. 编辑Shield.bat 
```
TASKKILL /IM "NVIDIA Geforce Experience.exe" ::停止主进程
timeout /T 1 /NOBREAK
net stop NVDisplay.ContainerLocalSystem ::停止主服务
netsh interface ip set address "WLAN 3" static  xxx.xxx.x.xxx 255.255.255.0 xxx.xxx.x.x    1 ::连接旁路由
                                              ::  PC机的ip地址  ::子网掩码    ::软路由的ip地址
net start NVDisplay.ContainerLocalSystem ::重启服务
explorer C:\Users\Public\Desktop\GeForce Experience.lnk ::重启主进程
timeout /T 5 /NOBREAK ::延时
netsh interface ip set address "WLAN 3" static  xxx.xxx.x.xxx 255.255.255.0 xxx.xxx.x.x    1 ::重新连接主路由
                                              ::  PC机的ip地址  ::子网掩码   ::软路由的ip地址
netsh interface ip set dns "WLAN 3" static 192.168.2.99 ::重新连接主路由
timeout /T 5 /NOBREAK ::延时关闭
```
4. 以管理员权限运行
