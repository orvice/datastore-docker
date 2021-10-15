FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine
RUN gcloud components install cloud-datastore-emulator

