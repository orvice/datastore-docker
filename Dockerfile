FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine
RUN gcloud components install cloud-datastore-emulator beta --quiet

ENV PORT 8080
ENV FIRESTORE_PROJECT_ID "dummy-datastore-id"

