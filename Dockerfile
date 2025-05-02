FROM openjdk:17-jdk-slim
 
WORKDIR /app
 
COPY /target/*.jar /app/app.jar
 
CMD ["java" , "-jar" , "/app/app.jar" , "--spring.data.mongodb.uri=mongodb://host.docker.internal:27017/supportportal"]
 