#!/bin/sh
cd `dirname $0`
netstat -an | grep LISTEN | grep 9000

