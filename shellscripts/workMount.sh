#!/bin/sh
umount ~/mnt/tv2
rm ~/mnt/tv2
mkdir ~/mnt/tv2
#sshfs -p 22 jr@d-ott01:/var/www/jr/youseetv /Volumes/youseetv -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=youseetv
sshfs jesr@dn-test-php5.i.tv2.dk: ~/mnt/tv2 -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=tv2