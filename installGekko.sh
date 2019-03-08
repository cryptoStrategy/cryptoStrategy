#!/bin/bash
clear
echo "-------------------------------------------"
echo 'INSTALLING GEKKO + DEPENDECIES'
echo '-------------------------------------------'
echo 'This will about 1-5 minutes, depending on your system and network connection'
cd /mnt/c/
git clone git://github.com/askmike/gekko.git
cd gekko
npm install --only=production
cd exchange
npm install --only=production
cd ..
npm install windows-build-tools --global --production
npm install tulind
cd ..
file="installGekko.sh"

if [ -f $file ] ; then
    rm $file
fi