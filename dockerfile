FROM adoptopenjdk/openjdk11:latest

ARG JAR_FILE=build/libs/alert-covid-gateway-*.jar


WORKDIR /opt/app

COPY ${JAR_FILE} gateway.jar
EXPOSE 8082
ENTRYPOINT java -jar gateway.jar