#!/bin/bash
YT_FILE="ytplaylist"

#TODO; input filtering

listLink="https://www.youtube.com/watch_videos?video_ids="
for line in $(cat $YT_FILE | sort -R); do
	# below is the ""regex"" to extract the youtube video-id. very brittle and only works if the ID comes after the last '=' and nothing after it
        line=${line##*=}
        listLink=$listLink$line,
done
listLink=${listLink%?}
echo $listLink
exit 0
