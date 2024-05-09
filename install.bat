@echo off

mkdir shared
copy Provisioning_Files\postprovision.sh shared

cd Provisioning_Files

REM Install Vagrant plugin
vagrant plugin install vagrant-vbguest

REM Start Vagrant and provision the environment
vagrant up --provision

REM Log in as the "vagrant" user and execute post-provisioning script
vagrant ssh -c "bash /home/vagrant/shared/postprovision.sh"


REM Remove postprovision.sh
del ..\shared\postprovision.sh


REM Shut down the Vagrant environment
vagrant halt

cd ..
