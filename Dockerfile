FROM openjdk:11
COPY target/my-app-1.0-SNAPSHOT.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]