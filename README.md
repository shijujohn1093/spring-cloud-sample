# spring-cloud-sample

## Comman to tun in background for forever

nohup java -jar config-service.jar &

## start other services in background

nohup java -jar ./eureka-service/target/*.jar -Dserver.port=8761 &
nohup java -jar ./foo-service/target/*jar -Dserver.port=8081 &
nohup java -jar ./foo-service/target/*.jar -Dserver.port=8082 &
nohup java -jar ./bar-service/target/*.jar -Dserver.port=8083 &
nohup java -jar ./bar-service/target/*.jar -Dserver.port=8084 &

## Way to access instances details from eureka service

http://18.206.135.45:8761/eureka/apps/foo-service

## Way to access configuration from config service

http://18.206.135.45:8888/foo-service/local




