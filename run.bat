@echo off
echo "Creating JDE Atina Server..."
docker-compose up --no-start
docker cp tmp/jde/config/JDV920 jdeatina-microserver:/tmp/jde/config
docker cp tmp/jde/lib jdeatina-microserver:/tmp/jde/lib
docker-compose start