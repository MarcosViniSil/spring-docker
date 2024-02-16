
FROM maven:3.9.4-amazoncorretto-17 as build
WORKDIR /app
COPY . .
RUN mvn clean package -X -DskipTests

FROM openjdk:17-ea-10-jdk-slim
WORKDIR /app
COPY --from=build ./app/target/*.jar ./springName.jar
ENTRYPOINT java -jar springName.jar


#================================================================================
# COMANDS
#================================================================================

# VERSION MVN
# mvn --version

# CREATE IMAGE
# docker build --tag nametag .

# RUN IMAGE
# docker run --name namecontainer -p 8080:8080 image(nametag)

#================================================================================