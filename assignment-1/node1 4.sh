#Node-1 

#!/bin/sh

sudo apt -y install openjdk-17-jdk
#sudo apt-get -y install maven
java --version

mkdir log
mkdir -p /home/labuser/edgeserver/8080
chmod 777 /home/labuser/edgeserver/8080

#Node 1 – Client 1, Content Provider 1, Edge Server 1, Registry

nohup java -jar /home/labuser/Desktop/Workspace/file-registry-server-0.0.1-SNAPSHOT.jar > log/registry.log 2>&1 &
nohup java -jar /home/labuser/Desktop/Workspace/edge-server-0.0.1-SNAPSHOT.jar > log/server1.log 2>&1 &
nohup java -jar /home/labuser/Desktop/Workspace/content-provider-0.0.1-SNAPSHOT.jar > log/content1.log 2>&1 &
sudo  java -jar /home/labuser/Desktop/Workspace/client-0.0.1-SNAPSHOT.jar > log/client1.log 2>&1 &

sleep 45

ps -ef | grep java

exit
