# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM maven:3.9.9-eclipse-temurin-17-alpine

# Install Docker CLI
USER root
RUN apk add --no-cache docker-cli

RUN apk add --no-cache bash coreutils procps
RUN apk add --no-cache git 

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar
COPY wrapper-entrypoint.sh /entrypoint.sh

# Make sure the entrypoint script is executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
