#!/bin/sh
cd /media/Movies/Uncategorized
find -name "*.da.srt" | xargs -I{} dirname {} | xargs -I list mv list /media/Movies/Subtitles

