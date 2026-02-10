FROM eclipse-temurin:17-jdk
EXPOSE 8080
ADD target/devops-integration1.jar devops-integration1.jar
ENTRYPOINT ["java","-jar","/devops-integration1.jar"]