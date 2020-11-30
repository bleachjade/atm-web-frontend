FROM maven:3.6.3-openjdk-15
WORKDIR /usr/atm/maven
COPY pom.xml .
RUN mvn dependency:resolve
COPY src ./src
RUN mvn compile
EXPOSE 8090
CMD ["mvn","spring-boot:run"]