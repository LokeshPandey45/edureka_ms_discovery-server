# Start with a base Java image (using JRE for smaller image size)
FROM eclipse-temurin:17-jre-alpine

LABEL authors="Lokesh"

# Set working directory
WORKDIR /app

# Copy the JAR file (Ensure you have built the project first)
COPY target/*.jar app.jar

# Expose the port Eureka runs on
EXPOSE 6001

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]