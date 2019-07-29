# !/bin/bash
echo starting
# Put initializing commands here if necessary

# Future sudo check spot

echo installing dependencies

# add future linux distro check for package manager
sudo apt install git wget unzip maven gradle openjdk-8-jre-headless -y

echo true > initialized

# This line downloads kettle.jar
wget https://github.com/KettleFoundation/Kettle/releases/download/vgit-HEAD-2579c45/kettle-git-HEAD-2579c45-universal.jar -O kettle.jar

# saves kettle version to file
echo git-HEAD-2579c45-universal > version.txt

# add uninstall.sh script generator here

# add update script here

# add start script here
