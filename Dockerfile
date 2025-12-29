# ---------- Build stage ----------
FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

# ---------- Run stage ----------
FROM eclipse-temurin:21-jre
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

# 👇 FORCE IPv4 (THIS FIXES SUPABASE + RENDER)
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true"

ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar app.jar"]
