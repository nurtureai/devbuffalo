#!/bin/bash
echo "runbuffalo v1.0"

echo "Going into $GOPATH/src/$1"
cd $GOPATH/src/$1
source dev-config.sh

echo "GOPATH: $GOPATH" && echo go --version && buffalo version && echo "soda: `soda -v`"
ifconfig eth0
export URL=`ifconfig eth0 | grep "broadcast" | awk '{print $2}'`
# echo "http://$URL:3005/"

yarn install
npm rebuild node-sass
exec $2 $3 $4 $5 $6 $7 $8
