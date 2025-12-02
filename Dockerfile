# Use Java 22 (or 21 LTS)
FROM eclipse-temurin:22-jdk

WORKDIR /app

# Copy the project
COPY . .

# Build using Maven Wrapper
RUN chmod +x mvnw
RUN ./mvnw clean install -DskipTests

# Run the jar
CMD ["java", "-jar", "target/email-generator-0.0.1-SNAPSHOT.jar"]
