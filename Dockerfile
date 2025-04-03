FROM openjdk:17-jdk-alpine

COPY ./build/libs/my-app-0.0.1-SNAPSHOT.jar /app/myapp.jar
WORKDIR /app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "myapp.jar"]