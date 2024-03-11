FROM openjdk:17-jdk-alpine3.14
EXPOSE 8082
RUN apt-get update && apt-get install -y curl
RUN curl -u admin:admin "http://localhost:8081/#browse/browse:maven-releases:tn%2Fesprit%2Frh%2Fachat%2F1.0%2Fachat-1.0.jar"
ENTRYPOINT [ "java","-jar","/achat-1.0.jar" ]