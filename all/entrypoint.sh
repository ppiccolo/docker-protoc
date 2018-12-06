#!/bin/bash

set -e

if [[ "${CI}" == "true" ]]; then
    echo "Running from CI/CD"
    cd ${CI_WORKING_DIR}
    exec ${CI_SCRIPT} "$@"
    exit 0
elif [[ "$1" != "bash" ]]; then
    echo "Default mode"
    exec gen-proto.sh "$@"
    exit 0
else
    echo "Running in interactive bash"
    exec "$@"
fi

