#!/bin/sh
cd /media/Movies/Uncategorized
find . -name "*.da.srt" -exec sh -c 'mv "${0%/*}" ../Subtitles/' {} \;
