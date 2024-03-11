FROM openjdk:17-jdk-alpine3.14
# RUN apk --no-cache add curl
EXPOSE 8082
# RUN curl -u admin:admin "http://192.168.1.101:8081/#browse/browse:maven-releases:tn%2Fesprit%2Frh%2Fachat%2F1.0%2Fachat-1.0.jar"
ADD target/achat-1.0.jar achat-1.0.jar
ENTRYPOINT [ "java","-jar","/achat-1.0.jar" ]