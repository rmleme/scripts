#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 HOST PORT USER DATABASE < DUMP_FILE" >&2
    exit 1
fi

echo "Dumping $4 definitions from $5..."

mysql --host $1 --port=$2 --protocol=tcp --quick --user $3 --password $4 <&0
