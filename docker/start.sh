#!/bin/sh
export LANG=ja_JP.UTF-8
cd /store
file=`echo *.zip`
dir=`basename $file .zip`
rm -rf $dir
unzip -q $file
cd $dir
chmod +x bin/saite360
bin/store -Dconfig.resource=stage.conf -DapplyEvolutions.default=true -DapplyDownEvolutions.default=true -Djava.net.preferIPv4Stack=true >stdout 2>stderr
