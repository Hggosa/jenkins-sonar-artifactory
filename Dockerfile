FROM openjdk:8-jdk-alpine

COPY target/demo-0.0.1-SNAPSHOT.jar  demo-0.0.1-SNAPSHOT.jar


ENV PORT 8082
EXPOSE $PORT

ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","demo-0.0.1-SNAPSHOT.jar"]