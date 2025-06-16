📦 Maven JDK 17 Jenkins Agent – 210920/maven-jdk17-agent
A lightweight Docker image designed for use as a Jenkins build agent. Built with OpenJDK 17 to ensure compatibility with tools like SonarQube 10+, this image is ideal for Maven-based Java applications.

🔧 Base Image
eclipse-temurin:17-jre-alpine
Built on a minimal Alpine Linux image using the Temurin JDK distribution for improved security, smaller size, and performance.

🛠️ Installed Tools
OpenJDK 17 (Temurin)
Maven-compatible environment
Java JAR entrypoint for Spring Boot-style apps

🧪 Sample Dockerfile Usage
dockerfile
FROM 210920/maven-jdk17-agent:v1
COPY target/your-app.jar /opt/app/app.jar

Or use directly in Jenkins:
groovy
pipeline {
  agent {
    docker {
      image '210920/maven-jdk17-agent:v1'
    }
  }
}

✅ Why Use This Image?
Ensures Java 17 compatibility for your builds
Optimized for CI/CD pipelines
Compatible with SonarQube 10.4+
Lightweight and fast startup

📥 How to Pull
sh docker pull 210920/maven-jdk17-agent:v1
