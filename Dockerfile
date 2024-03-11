FROM openjdk:17-oracle
RUN apt-get update && apt-get install -y curl
ARG NEXUS_URL=http://localhost:8081/repository/maven-releases/
RUN curl -o achat-1.0.jar ${NEXUS_URL}/tn/esprit/rh/achat/1.0/achat-1.0.jar
EXPOSE 8089
ENTRYPOINT ["java","-jar","achat-1.0.jar"]