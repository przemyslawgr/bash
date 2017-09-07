#!/bin/bash
echo Give me CTF id.

read ctfid
grep -rw -e "${ctfid}"

echo "Do you want to delete those files? (y/n)"
read response

if [ $response = y ]
then
    find -type f -exec sed -i "s/$ctfid//g" {} \;
    echo Deleted:
else
    echo No changes performed.
fi
