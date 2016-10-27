#!/bin/bash
set -eux

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
IMAGE_OWNER=playterminal

build_image() {
  IMAGE_NAME="$1"
  cd $IMAGE_NAME
  sudo docker build -t $IMAGE_OWNER/$IMAGE_NAME .
  if [[ "--push" == "${2-}" ]]; then
    sudo docker push $IMAGE_OWNER/$IMAGE_NAME
  fi
}

cd $SCRIPT_DIR
if [[ "$(id -u)" != "0" ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

if [[ $# -eq 0 ]]; then
  echo "No command specified."
  exit 1
else
  build_image "$1" "${2-}"
  echo "Done."
fi

