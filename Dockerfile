FROM java:8-jdk-alpine
ADD target/mongo-0.0.1-SNAPSHOT.jar mongo-0.0.1-SNAPSHOT.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "mongo-0.0.1-SNAPSHOT.jar"]