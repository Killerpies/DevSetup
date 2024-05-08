@echo off

set /p VBoxLocation=<VirtualBoxLocation.txt
if "%VBoxLocation%" == "" (
    echo Error: VBoxManage.exe not found.
    exit /b 1
)

"%VBoxLocation%" startvm Dev-environment --type separate