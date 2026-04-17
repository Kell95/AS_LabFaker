FROM eclipse-temurin:17-jre
EXPOSE 8080
ADD target/faker-0.0.1-SNAPSHOT.jar faker.jar
ENTRYPOINT ["java","-jar","fake.jar"]