#!/bin/bash
sudo adduser --disabled-password --gecos "" minecraft
sudo apt-get update
sudo apt-get -y install openjdk-8-jre-headless
sudo apt-get -y remove openjdk-11-jre-headless
sudo -u minecraft wget -P /home/minecraft https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar
sudo su minecraft -c "echo 'eula=true' > /home/minecraft/eula.txt"
sudo cp start.sh /home/minecraft/start.sh
sudo chmod a+x /home/minecraft/start.sh
