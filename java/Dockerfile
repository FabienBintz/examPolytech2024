FROM maven:3.9-eclipse-temurin-8 AS builder

# On utilise une image multi step car java 8 n'est pas installé sur le système hôte

LABEL maintainer="Fabien Bintz"

WORKDIR /backend

COPY . .

RUN mvn clean package -DskipTests



FROM eclipse-temurin:8-jre-alpine

WORKDIR /backend

COPY --from=builder /backend/target/java-*.jar app.jar

EXPOSE 8448

CMD ["java", "-jar", "app.jar"]