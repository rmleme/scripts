#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 FUNCTION_NAME < PAYLOAD" >&2
    exit 1
fi

aws lambda invoke --function-name $1 --payload "<&0" /dev/stdout
