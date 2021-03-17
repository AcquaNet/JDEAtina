@echo off
echo --------------------------------------------
echo Cleaning JDE Atina Server...
echo --------------------------------------------
echo   
echo        Stopping containers...
docker-compose stop
echo        Removing containers...
docker rm mule-server
docker rm ngrok-server
docker rm jdeatina-microserver
docker rm ngrok-microserver
echo        Removing images...
docker rmi 92455890/ngrok-server:1.0.0
docker rmi 92455890/mule-server:1.0.0
docker rmi 92455890/jdeatina-microserver:1.0.0
docker rmi 92455890/ngrok-microserver:1.0.0