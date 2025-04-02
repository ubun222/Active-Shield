REM sunshine Application  Do Command : cmd /C "C:\Users\cb199\Documents\副屏.bat"
REM sunshine Application  Undo Command : cmd /C "C:\Users\cb199\Documents\主屏.bat"

pnputil /disable-device  "ROOT\DISPLAY\0000"

timeout /t 1 |  C:\VirtualDisplayDriver\res++.bat %SUNSHINE_CLIENT_WIDTH% %SUNSHINE_CLIENT_HEIGHT%

pnputil /enable-device  "ROOT\DISPLAY\0000"

timeout /t 1 /NOBREAK

C:\Windows\System32\DisplaySwitch.exe /external

timeout /t 1 /NOBREAK

C:\Windows\System32\QRes.exe /X:%SUNSHINE_CLIENT_WIDTH% /Y:%SUNSHINE_CLIENT_HEIGHT% /R:%SUNSHINE_CLIENT_FPS%