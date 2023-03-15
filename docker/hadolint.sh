#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 DOCKERFILE" >&2
    exit 1
fi

docker run --rm -i hadolint/hadolint < $1
