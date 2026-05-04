@echo off
echo Building and running microservices...

cd student-service
call mvn clean install -DskipTests
start "Student Service 8081" cmd /k "mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=8081"
start "Student Service 8082" cmd /k "mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=8082"

cd ../api-gateway
call mvn clean install -DskipTests
start "API Gateway 8080" cmd /k "mvn spring-boot:run"

cd ..
echo Services are starting in separate windows.
echo API Gateway: http://localhost:8080
echo Student Service 1: http://localhost:8081
echo Student Service 2: http://localhost:8082
