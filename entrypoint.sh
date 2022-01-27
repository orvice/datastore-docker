#!/bin/sh

set -xe

# Config gcloud project
gcloud config set project "${DATASTORE_PROJECT_ID}"

# Start emulator
gcloud beta emulators datastore start \
  --host-port="0.0.0.0:${PORT}"