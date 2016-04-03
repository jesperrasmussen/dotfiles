#!/bin/bash

backupLocations=(
                 "/mnt/data1/Documents" 
                 "/mnt/data1/Learning" 
                 "/mnt/data1/Photography" 
                 "/mnt/data1/Pictures" 
                 "/mnt/data1/Projects" 
                 "/mnt/data1/Work"
                 )

backupDestination="/mnt/recovery/Backup"

for path in "${backupLocations[@]}"
do
  rsync -avz --size-only "$path" "$backupDestination"
done

#rsync -av --size-only --exclude ".DS_Store" --exclude ".fseventsd" --exclude ".Spotlight-V100" --exclude ".TemporaryItems" --exclude ".Trashes" /Volumes/Media/Photography/5.\ Backup/ /Volumes/Data/Photography/5.\ Backup/
exit 0
