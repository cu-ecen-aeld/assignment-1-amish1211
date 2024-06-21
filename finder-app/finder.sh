#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z $filesdir ]; then
  echo "filesdir is empty"
  exit 1
fi

if [ -z $searchstr ]; then
  echo "searchstr is empty"
  exit 1
fi

if [ ! -d $filesdir ]; then
  echo "Directory $filesdir does not exist"
  exit 1
fi

X=$(find $filesdir -type f | wc -l)

Y=$(grep -rl $searchstr $filesdir | sort |
 uniq | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"

