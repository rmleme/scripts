#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 HOST PORT USER DATABASE" >&2
    exit 1
fi

CURRENT_DATE=`date +%Y-%m-%d`
DUMP_FILE="dump_$4_${CURRENT_DATE}.sql"
 
echo "Dumping $4 definitions to ${DUMP_FILE}..."

mysqldump --host $1 --port=$2 --protocol=tcp --single-transaction --quick --lock-tables=false --routines --triggers --no-data --events --user $3 --password $4 > $DUMP_FILE
