FROM openjdk:11
RUN mkdir usr/local/configurationservice
COPY build/libs/configurationservice.jar /usr/local/configurationservice/configurationservice.jar
ENTRYPOINT java -Xms256m -Xmx512m -jar /usr/local/configurationservice/configurationservice.jar