FROM eclipse-temurin:17-jdk
EXPOSE 8080
ADD target/devopsintegration.jar devopsintegration.jar
ENTRYPOINT ["java","-jar","/devopsintegration.jar"]