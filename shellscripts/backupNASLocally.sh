#!/bin/sh

backupLocations=(
                 "/media/506721bd-4f78-463e-9574-ba9f7c2ced07/Documents" 
                 "/media/506721bd-4f78-463e-9574-ba9f7c2ced07/Learning" 
                 "/media/506721bd-4f78-463e-9574-ba9f7c2ced07/Photography" 
                 "/media/506721bd-4f78-463e-9574-ba9f7c2ced07/Pictures" 
                 "/media/506721bd-4f78-463e-9574-ba9f7c2ced07/Projects" 
                 "/media/506721bd-4f78-463e-9574-ba9f7c2ced07/Work"
                 )
backupDestination = "/export/Recovery/Backup"

for path in "${backupLocations[@]}"
do
  echo $path
done

#rsync -av --size-only --exclude ".DS_Store" --exclude ".fseventsd" --exclude ".Spotlight-V100" --exclude ".TemporaryItems" --exclude ".Trashes" /Volumes/Media/Photography/5.\ Backup/ /Volumes/Data/Photography/5.\ Backup/
exit 0
