#!/bin/sh
umount /Volumes/youseetv
rm /Volumes/youseetv
mkdir /Volumes/youseetv
sshfs -p 22 jr@d-ott01:/var/www/jr/youseetv /Volumes/youseetv -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=youseetv
