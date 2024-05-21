#!/bin/bash
#mvn clean install
set -x #echo on
cwd=$(pwd)
nohup java -jar $cwd/eureka-service/target/*.jar -Dserver.port=8761 > eurek_hop_log.out &
sleep 30s
nohup java -jar $cwd/foo-service/target/*.jar -Dserver.port=8081 > foo_hop_log8081.out &
nohup java -jar $cwd/foo-service/target/*.jar -Dserver.port=8082 > foo_hop_log8082.out &
nohup java -jar $cwd/bar-service/target/*.jar -Dserver.port=8083 > bar_hop_log8083.out &
nohup java -jar $cwd/bar-service/target/*.jar -Dserver.port=8084 > bar_hop_log8084.out &