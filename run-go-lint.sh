#!/bin/sh

PASS=true
for FILE in "$@"
do
    output=$(golint "$FILE" 2>&1 )
    if ! [ -z "$output" ]
    then
        PASS=false
	echo "$output"
    fi
done

if [ "$PASS" = "false" ]; then
    exit 1
fi
