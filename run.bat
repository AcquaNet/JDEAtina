@echo off
echo "Creating JDE Atina Server..."
docker-compose up --no-start
docker cp tmp/jde/config/JDV920 jdeatina-microserver:/tmp/jde/config
docker cp tmp/jde/lib jdeatina-microserver:/tmp/jde/lib
docker-compose start
#
# docker exec -it jdeatina-microserver
#
#docker exec -it jdeatina-microserver /bin/bash
#echo "65.52.119.187 JDE-ALPHA-SQL" >> /etc/hosts
#echo "138.91.73.161 JDE-ALPHA-ENT" >> /etc/hosts