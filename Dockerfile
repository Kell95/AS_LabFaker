FROM eclipse-temurin:17-jre
EXPOSE 8080
ADD target/faker.jar faker.jar
ENTRYPOINT ["java","-jar","fake.jar"]