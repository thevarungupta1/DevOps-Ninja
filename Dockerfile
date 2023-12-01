FROM openjdk:17.0.1-jdk-slim
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} sampleapp.jar
ENTRYPOINT [ "java" ,"-jar" , "/sampleapp.jar" ]