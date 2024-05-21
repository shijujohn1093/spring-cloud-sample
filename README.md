# spring-cloud-sample

## Comman to tun in background for forever

nohup java -jar config-service.jar &

## start other services in background

nohup java -Dserver.port=8761 -jar ./eureka-service/target/*.jar &
nohup java -Dserver.port=8081 -jar ./foo-service/target/*jar &
nohup java -Dserver.port=8082 -jar ./foo-service/target/*.jar &
nohup java -Dserver.port=9091 -jar ./bar-service/target/*.jar &
nohup java -Dserver.port=9092 -jar ./bar-service/target/*.jar &


## Way to access instances details from eureka service

http://18.206.135.45:8761/eureka/apps/foo-service

## Way to access configuration from config service

http://18.206.135.45:8888/foo-service/local




