FROM openjdk:17-oracle
# Add curl for downloading artifact from Nexus
RUN apt-get update && apt-get install -y curl

# Set the Nexus repository URL
ARG NEXUS_URL=http://localhost:8081/repository/maven-releases/

# Download the artifact from Nexus and add it to the Docker image
RUN curl -o achat-1.0.jar ${NEXUS_URL}/tn/esprit/rh/achat/1.0/achat-1.0.jar

EXPOSE 8089

ENTRYPOINT ["java","-jar","achat-1.0.jar"]