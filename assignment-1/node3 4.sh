#Node-3

#!/bin/sh

sudo apt -y install openjdk-17-jdk
#sudo apt-get -y install maven
java --version

#mkdir log
mkdir -p /home/labuser/edgeserver/8080
chmod 777 /home/labuser/edgeserver/8080

#Node 3 – Content Provider 2, Edge Server 3

nohup java -Dregistry.server.hostname=172.31.7.102 -jar /home/labuser/Desktop/Workspace/edge-server-0.0.1-SNAPSHOT.jar > log/server3.log 2>&1 &
nohup java -Dregistry.server.hostname=172.31.7.102 -jar /home/labuser/Desktop/Workspace/content-provider-0.0.1-SNAPSHOT.jar > log/content2.log 2>&1 &

sleep 45

ps -ef | grep java 

exit
