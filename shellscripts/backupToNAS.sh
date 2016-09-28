#!/bin/bash

backupLocations=(
                 "~/Documents" 
                 "~/Learning" 
                 "~/Photography" 
                 "~/Pictures" 
                 "~/Projects" 
                 "~/Work"
                 )

backupDestination="/Volumes/Shares/Media"

for path in "${backupLocations[@]}"
do
  rsync -avz --size-only "$path" "$backupDestination"
done

#rsync -av --size-only --exclude ".DS_Store" --exclude ".fseventsd" --exclude ".Spotlight-V100" --exclude ".TemporaryItems" --exclude ".Trashes" /Volumes/Media/Photography/5.\ Backup/ /Volumes/Data/Photography/5.\ Backup/
exit 0
