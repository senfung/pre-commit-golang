#!/bin/sh

PASS=true
for FILE in "$@"
do
    output=$(golint "$FILE" 2>&1 )
    echo $FILE
    if ! [ -z "$output" ]
    then
        PASS=false
	echo "$output"
    fi
done

echo $PASS

if [ "$PASS" = "false" ]; then
    exit 1
fi
