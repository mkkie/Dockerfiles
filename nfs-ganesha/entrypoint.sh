#!/bin/sh

rpcbind || echo "rpcbind fail"
/usr/bin/ganesha.nfsd -F -L /ganesha.nfsd.log

cat /ganesha.nfsd.log
