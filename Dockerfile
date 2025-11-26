FROM maven:3.9.6-eclipse-temurin-21 AS build

WORKDIR /app
COPY pom.xml .

RUN mvn dependency:go-offline

COPY src ./src

RUN mvn clean install -DskipTests


FROM gcr.io/distroless/java21-debian12

VOLUME /tmp

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]

EXPOSE 8080