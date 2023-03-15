#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 PATTERN BASE_DIR" >&2
    exit 1
fi

cd $2

grep -i -r "$1" * --exclude-dir={bin,obj,debug,out,target,".*"}
