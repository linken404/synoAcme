#!/bin/bash

sysNumber=`cat /usr/syno/etc/certificate/_archive/DEFAULT`
sysCrtPath=/usr/syno/etc/certificate/_archive/$sysNumber
usrCrtPath=/your-cert-pwd

cp $usrCrtPath/* $sysCrtPath
cp $usrCrtPath/* /usr/syno/etc/certificate/system/default
cp $usrCrtPath/* /usr/syno/etc/certificate/smbftpd/ftpd
/usr/syno/etc/rc.sysv/nginx.sh reload
