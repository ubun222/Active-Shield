REM sunshine Application  Do Command : cmd /C "C:\Users\xxxxx\Documents\副屏.bat"
REM sunshine Application  Undo Command : cmd /C "C:\Users\xxxxx\Documents\主屏.bat"

pnputil /disable-device  "ROOT\DISPLAY\0000"

timeout /t 2 |  echo |  C:\VirtualDisplayDriver\res++.bat %SUNSHINE_CLIENT_WIDTH% %SUNSHINE_CLIENT_HEIGHT%

pnputil /enable-device  "ROOT\DISPLAY\0000"

C:\Windows\System32\DisplaySwitch.exe /external
C:\Windows\System32\QRes.exe /X:%SUNSHINE_CLIENT_WIDTH% /Y:%SUNSHINE_CLIENT_HEIGHT% /R:%SUNSHINE_CLIENT_FPS%
