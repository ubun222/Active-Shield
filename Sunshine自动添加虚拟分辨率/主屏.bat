REM 在配置完成后，首先去设置里将多显示器改为复制模式，并调整分辨率刷新率等。因为在开机或者锁屏情况下，internal模式无法改变。
@echo off
timeout /t 1 /NOBREAK

DisplaySwitch.exe /clone
