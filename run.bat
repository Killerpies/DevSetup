@echo off

REM Read configuration values from config.txt
for /f "tokens=1,* delims==" %%a in (config.txt) do (
    if "%%a"=="RESOLUTION" set Resolution=%%b
    if "%%a"=="CPU_CORES" set CPU_Cores=%%b
    if "%%a"=="MEMORY" set Memory=%%b
    if "%%a"=="VRAM" set VRAM=%%b
    if "%%a"=="MONITOR_COUNT" set Monitor_Count=%%b
    if "%%a"=="GRAPHICS_CONTROLLER" set Graphics_Controller=%%b
)

REM Check if VBoxLocation environment variable is set
if not defined VBoxLocation (
    set /p VBoxLocation=<./Provisioning_Files/VirtualBoxLocation.txt
    if not defined VBoxLocation (
        echo Error: VBoxManage.exe not found.
        exit /b 1
    )
)

REM Start the VM with the specified screen size, CPU cores, memory, VRAM, monitor count, and graphics controller
"%VBoxLocation%" setextradata Dev-environment-focal-fossa "CustomVideoMode1" "%Resolution%x32"
"%VBoxLocation%" modifyvm Dev-environment-focal-fossa --graphicscontroller %Graphics_Controller% --vram %VRAM%
"%VBoxLocation%" modifyvm Dev-environment-focal-fossa --cpus %CPU_Cores%
"%VBoxLocation%" modifyvm Dev-environment-focal-fossa --memory %Memory%
"%VBoxLocation%" modifyvm Dev-environment-focal-fossa --monitorcount %Monitor_Count%
"%VBoxLocation%" startvm Dev-environment-focal-fossa
