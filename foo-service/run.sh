#!/bin/bash
java -jar ./target/*.jar -Dserver.port=8083 &
java -jar ./target/*.jar -Dserver.port=8084