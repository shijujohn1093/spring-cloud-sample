#!/bin/bash
#mvn clean install
set -x #echo on
cwd=$(pwd)
nohup java -jar $cwd/eureka-service/target/*.jar -Dserver.port=8761 &
#sleep 30s
nohup java -jar $cwd/foo-service/target/*.jar -Dserver.port=8081 &
nohup java -jar $cwd/foo-service/target/*.jar -Dserver.port=8082 &
nohup java -jar $cwd/bar-service/target/*.jar -Dserver.port=8083 &
nohup java -jar $cwd/bar-service/target/*.jar -Dserver.port=8084 &