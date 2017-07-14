#!/usr/bin/env bash
set -e

if ! [[ "$0" =~ "./scripts/docker/build-cpu.sh" ]]; then
  echo "must be run from repository root"
  exit 255
fi

docker build \
  --tag gcr.io/gcp-dplearn/dplearn:latest-cpu \
  --file ./dockerfiles/cpu/Dockerfile \
  .
