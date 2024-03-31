#Node-2 

#!/bin/sh

sudo apt -y install openjdk-17-jdk
#sudo apt-get -y install maven
java --version


mkdir -p /home/labuser/edgeserver/8080
chmod 777 /home/labuser/edgeserver/8080


#Node 2 – Edge Server 2, Client 2, Client 3

nohup java -Dregistry.server.hostname=172.31.7.102 -jar /home/labuser/Desktop/Workspace/edge-server-0.0.1-SNAPSHOT.jar > log/server2.log 2>&1 &
sudo java -jar /home/labuser/Desktop/Workspace/client-0.0.1-SNAPSHOT.jar > log/client2.log 2>&1 &
sudo java -Dserver.port=81 -jar /home/labuser/Desktop/Workspace/client-0.0.1-SNAPSHOT.jar > log/client3.log 2>&1 &

sleep 45 

ps -ef | grep java 
exit
