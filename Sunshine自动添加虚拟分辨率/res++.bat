set width=%~1
set height=%~2
findstr /C:"<width>%width%</width>" "C:\VirtualDisplayDriver\vdd_settings.xml"
set err=%errorlevel%
findstr /C:"<height>%height%</height>" "C:\VirtualDisplayDriver\vdd_settings.xml"
set err1=%errorlevel%
if %err% EQU 0 ( 
    if %err1% EQU 0 ( 
    echo  %~1x%~2 
    exit /b 0
)
)

cd /d "%~dp0"
setlocal enabledelayedexpansion
@echo off

if "%~1"=="" (
    echo %~nx0 3840 2160
    exit /b 0
)
if "%~2"=="" (
    echo %~nx0 3840 2160
    exit /b 0
)
set "file=vdd_settings.xml"
set "target=        </resolution>"

set "insert1=        ^<resolution^>"
set "insert2=            ^<width^>%~1^</width^>"
set "insert3=            ^<height^>%~2^</height^>"
set "insert4=            ^<refresh_rate^>30^</refresh_rate^>"
set "insert5=        ^</resolution^>"


(
setlocal disabledelayedexpansion
    for /f "tokens=1* delims=" %%A in (%file%) do (

        if "%%A"=="    </resolutions>" (

          echo %insert1%
          echo %insert2%
          echo %insert3%
          echo %insert4%
          echo %insert5%
            echo %%A
        ) else (
            echo %%A
        )
        
    )
)>"%file%.tmp"


move /y "%file%.tmp" "%file%" >nul
echo  %~1x%~2