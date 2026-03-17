#!/bin/bash

if [ -z "$1" ]; then
	echo "Error: Directory path not specified."
	exit 1
fi

if [ -z "$2" ]; then
	echo "Error: Search string not specified."
	exit 1
fi

dir="$1"
searchstr="$2"

if [ ! -d "$dir" ]; then
	echo "Error: ${dir} is not a directory."
fi

filecount=$(find "$dir" -type f | wc -l)
matchcount=$(grep -r "$searchstr" "$dir" 2>/dev/null | wc -l)

echo "The number of files are ${filecount} and the number of matching lines are ${matchcount}"

