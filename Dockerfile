FROM --platform=linux/amd64 openjdk:11
WORKDIR /libreforge-integration-app

COPY target/libreforge-integration-app.jar /libreforge/libreforge-integration-app.jar

EXPOSE 9111
ENV JAVA_OPTIONS=""
CMD java ${JAVA_OPTIONS} \
    -jar /libreforge/libreforge-integration-app.jar
