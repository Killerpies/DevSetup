@echo off

setlocal 
mkdir __dir__\..\..\vagrant_projects
mkdir shared
copy Provisioning_Files\postprovision.sh shared
cd Provisioning_Files

REM Find the location of VirtualBox
dir /S /B "C:\Program Files\VBoxManage.exe" > VirtualBoxLocation.txt 2>&1

REM Install Vagrant plugin
vagrant plugin install vagrant-vbguest

REM Start Vagrant and provision the environment
vagrant up --provision

REM Wait for 5 seconds
timeout /t 5

REM Log in as the "vagrant" user and execute post-provisioning script
vagrant ssh -c "bash /home/vagrant/shared/postprovision.sh"

REM Remove postprovision.sh
del ..\shared\postprovision.sh

REM Shut down the Vagrant environment
vagrant halt
cd ..
endlocal
