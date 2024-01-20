#!/bin/sh

# Usage: ./crack-keepass.sh passwords.kdbx dict.txt
#
# The dictionary file can be generated with:
# https://github.com/TimurKiyivinski/permutatify

while read i
do
    echo "Using password: \"$i\""
    echo "$i" | kpcli --kdb=$1 && exit 0
done < $2
