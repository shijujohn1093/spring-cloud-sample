#!/bin/bash
./mvn clean build
(setsid "./config-service/run.sh" &);
(setsid "./eureka-service/run.sh" &);
sleep 30s
(setsid "./foo-service/run.sh" &);
(setsid "./bar-service/run.sh" &);