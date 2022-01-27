#!/bin/sh

set -xe

# Start emulator
gcloud beta emulators datastore start \
  --host-port="0.0.0.0:${PORT}" --project  "${DATASTORE_PROJECT_ID}"