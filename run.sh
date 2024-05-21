#!/bin/bash
mvn clean install
(setsid "java -jar ./config-service/target/*.jar -Dserver.port=8888" &);
(setsid "java -jar ./eureka-service/target/*.jar -Dserver.port=8761" &);
sleep 30s
(setsid "java -jar ./foo-service/target/*.jar -Dserver.port=8081" &);
(setsid "java -jar ./foo-service/target/*.jar -Dserver.port=8082" &);
(setsid "java -jar ./bar-service/target/*.jar -Dserver.port=8083" &);
(setsid "java -jar ./bar-service/target/*.jar -Dserver.port=8084" &);