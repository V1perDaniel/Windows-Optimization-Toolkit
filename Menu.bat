@echo off
title Very Bad Optimization/Cleaning Tool
color 0b
mode con: cols=60 lines=4
cd %~dp0\Data
echo Welcome to the worst Optimization and Cleaning Toolkit!
echo Made by the worst coder on GitHub, V1perDaniel!
echo Fake loading...
timeout /NOBREAK 3 > nul
cls
color 0f
echo Finished Fake loading!
timeout /NOBREAK 1 > nul

:menu
mode con: cols=85 lines=20
color 0a
cls
echo ------------------------------------------------------
echo   / ____/ /__  ____ _____  ___  _____
echo  / /   / / _ \/ __ `/ __ \/ _ \/ ___/
echo / /___/ /  __/ /_/ / / / /  __/ /
echo \____/_/\___/\__,_/_/ /_/\___/_/
echo Optimization Tool by V1per
echo WARNING: Please open this program as administrator!
echo ------------------------------------------------------
echo 01 - BloatBox           ^| 08 - System DM CPL
echo 02 - CCleaner           ^| 09 - Temp Folder
echo 03 - HWiNFO             ^| 10 - Prefetch Folder
echo 04 - DriverEasy         ^| 11 - Disk Cleanup
echo 05 - IOBit Uninstaller  ^| 12 - Optimizer (by hellzerg)
echo 06 - Mz Tools           ^| 13 - Add/Remove "Take Ownership" to your Context Menu
echo 07 - AdwCleaner         ^| 14 - CTT Win Toolbox
echo ------------------------------------------------------
set /p CHOICE=Number ~ 

IF %CHOICE%==1 start BloatBox.exe
IF %CHOICE%==2 goto CCL
IF %CHOICE%==3 goto HWI
IF %CHOICE%==4 start DriverEasyPortable.exe
IF %CHOICE%==5 start IObitUninstaller\IObitUninstaler.exe
IF %CHOICE%==6 start %windir%\explorer.exe "%CD%\Mz"
IF %CHOICE%==7 start AdwCleaner.exe
IF %CHOICE%==8 start SYSDM.CPL
IF %CHOICE%==9 start C:\Users\%USERNAME%\AppData\Local\Temp

IF %CHOICE%==01 start BloatBox.exe
IF %CHOICE%==02 goto CCL
IF %CHOICE%==03 goto HWI
IF %CHOICE%==04 start DriverEasyPortable.exe
IF %CHOICE%==05 start IObitUninstaller\IObitUninstaler.exe
IF %CHOICE%==06 start %windir%\explorer.exe "%CD%\Mz"
IF %CHOICE%==07 start AdwCleaner.exe
IF %CHOICE%==08 start SYSDM.CPL
IF %CHOICE%==09 start C:\Users\%USERNAME%\AppData\Local\Temp

IF %CHOICE%==10 start C:\Windows\Prefetch
IF %CHOICE%==11 start %windir%\SYSTEM32\cleanmgr.exe
IF %CHOICE%==12 start Optimizer.exe
IF %CHOICE%==13 goto TOS
IF %CHOICE%==14 goto CTT
goto menu

:CCL
cd CCleaner
cls
echo CCleaner has 2 versions, please select one!
echo 1 - 64-bit
echo 2 - 32-bit
set /p BIT=Number: 
if %BIT%==1 start CCleaner64.exe
if %BIT%==2 start CCleaner.exe
cd ..
goto menu

:HWI
cls
echo HardwareInfo has 2 versions, please select one!
echo 1 - 64-bit
echo 2 - 32-bit
set /p BIT=Number: 
if %BIT%==1 start HWiNFO64.exe
if %BIT%==2 start HWiNFO32.exe
goto menu

:TOS
cls
echo Do you want to add or remove "Take Ownership"?
echo 1 - Add
echo 2 - Remove
set /p CHO=Number: 
if %CHO%==1 start TakeOwnershipAdd.reg
if %CHO%==2 start TakeOwnershipRemove.reg
goto menu

:CTT
cls
powershell -Command "iwr -useb https://git.io/JJ8R4 | iex"
goto menu