# base image https://hub.docker.com/layers/library/openjdk/17-jdk-alpine/
FROM openjdk:17-jdk-alpine

ENV JAR_FILE my-maven-project-3.0-SNAPSHOT.jar

WORKDIR /app

COPY target/${JAR_FILE} /app/

# Set the command to run the Spring Boot application
CMD java -jar ${JAR_FILE} 
