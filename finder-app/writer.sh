#!/bin/bash

writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
  echo "You need to give writefile and writestr both"
  exit 1
fi

writefolder=`dirname ${writefile}`

if [ ! -d "$writefolder" ]; then
  mkdir -p "$writefolder"
fi



echo "${writestr}" > "${writefile}"
if [ $? -ne 0 ]; then
  echo "Write Error!"
  exit 1
fi


exit 0


