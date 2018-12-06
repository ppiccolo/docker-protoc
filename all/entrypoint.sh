#!/bin/bash

set -e

if [[ "$1" != "bash" ]]; then
    exec gen-proto.sh "$@"
fi

exec "$@"
