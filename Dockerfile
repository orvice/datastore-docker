FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine

# Install Java 8 JRE 
RUN apk add --update --no-cache openjdk8-jre

RUN gcloud components install cloud-datastore-emulator beta --quiet

ENV PORT 8080
ENV FIRESTORE_PROJECT_ID "dummy-datastore-id"

COPY entrypoint.sh /app/bin/entrypoint.sh

ENTRYPOINT [ "/app/bin/entrypoint.sh" ]

