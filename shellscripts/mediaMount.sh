#!/bin/sh
umount ~/mnt/mediaserver
rm ~/mnt/mediaserver
mkdir ~/mnt/mediaserver
#sshfs -p 22 jr@d-ott01:/var/www/jr/youseetv /Volumes/youseetv -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=youseetv
sshfs jesperrasmussen@10.0.0.123: ~/mnt/mediaserver -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=mediaserver
