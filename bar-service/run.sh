#!/bin/bash
java -jar ./target/*.jar -Dserver.port=8081 &
java -jar ./target/*.jar -Dserver.port=8082