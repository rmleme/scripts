#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 HOST PORT NUMBER_OF_DUMPS" >&2
    exit 1
fi

HOST=$1
PORT=$2
NUMBER_OF_DUMPS=$3
OUTPUT_NAME=${HOST//[.]/-}

echo "Starting generation of thread dumps for $HOST:$PORT..."

for (( i=1; i<=$NUMBER_OF_DUMPS; i++ ))
do
  curl -s $HOST:$PORT/actuator/threaddump -H 'Accept: text/plain' > $OUTPUT_NAME.$i.txt
  echo "Generated thread dump $OUTPUT_NAME.$i.txt"

  if (( $i<$NUMBER_OF_DUMPS ))
  then
    sleep 15
  fi
done

echo "Generation of thread dumps for $HOST:$PORT completed."
