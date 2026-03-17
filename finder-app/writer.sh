#!/bin/bash


if [ -z "$1" ]; then
	echo "Error: File path not specified."
	exit 1
fi

if [ -z "$2" ]; then
	echo "Error: Write string not specified."
	exit 1
fi

writefile="$1"
writestr="$2"


dirpath=$(dirname $writefile)
mkdir -p $dirpath

echo "$writestr" > $writefile
if [ $? -ne 0 ]; then
	echo "Error: Could not create file ${writefile}."
	exit 1
fi

