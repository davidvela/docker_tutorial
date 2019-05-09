#!/bin/sh

set -e

if ! ([ -z "${AWS_ACCESS_KEY_ID}" ] || [ -z "${AWS_SECRET_ACCESS_KEY}" ] || [ -z "${AWS_S3_BUCKET}" ]); then
  echo  "Creating experiment"
  NAME="Experiment1"
  if ! [ -z "${EXPERIMENT_NAME}" ]; then
    NAME=$EXPERIMENT_NAME
    cd /mlflow
    mlflow experiments create $NAME --artifact-location $AWS_S3_BUCKET
  fi
else
  echo "Not found environmet variables"
fi

mlflow server \
    --file-store /mlflow/mlruns \
    --host 0.0.0.0 \
    --port 5000