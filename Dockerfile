FROM openjdk:11
ARG VERSION
RUN mkdir usr/local/configurationservice
COPY build/libs/configurationservice-${VERSION}.jar /usr/local/configurationservice/configurationservice-${VERSION}.jar
ENTRYPOINT ["java","-Xms256m","-Xmx256m","/usr/local/configurationservice/configurationservice-${VERSION}.jar"]