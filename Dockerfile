FROM openjdk:8-jdk

COPY target/*.jar /jar_fils

CMD ["java", "-jar", "/jar_files/*.jar"]