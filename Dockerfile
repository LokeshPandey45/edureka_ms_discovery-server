# Start with a base Java image
FROM eclipse-temurin:17-jdk

LABEL authors="vishal"

# Set working directory
WORKDIR /app

# Copy the JAR file (Ensure you have built the project first)
COPY target/*.jar app.jar

# Expose the port Eureka runs on
EXPOSE 5001:5001

#INSTALLING UTILITIES
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y curl

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]