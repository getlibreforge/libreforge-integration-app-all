FROM --platform=linux/amd64 openjdk:11
WORKDIR /libreforge-integration-app

COPY target/libreforge-integration-app-all-*.jar /libreforge/libreforge-integration-app-all.jar

ENV JAVA_OPTIONS=""
CMD java ${JAVA_OPTIONS} \
    -Daws.accessKeyId="${AWS_ACCESS_KEY}" \
    -Daws.secretKey="${AWS_SECRET_KEY}" \
    -Daws.region="${AWS_REGION}" \
    -Daws.s3.bucketName="${AWS_S3_BUCKET}" \
    -jar /libreforge/libreforge-integration-app-all.jar
