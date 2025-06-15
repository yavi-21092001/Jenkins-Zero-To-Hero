# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM abhishekf5/maven-abhishek-docker-agent:v1

# Update package lists
RUN apt update && apt install -y openjdk-17-jdk

# Set Java 17 as the default
ENV JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
ENV PATH="${JAVA_HOME}/bin:${PATH}"

# Verify Java version inside the container
RUN java -version

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
