#!/bin/bash


## Get data
STATUS="$(mpc -p 6601 status)"
COVER="/tmp/.music_cover.jpg"
MUSIC_DIR="$HOME/Music"


## Get cover
get_cover() {
	ffmpeg -i "${MUSIC_DIR}/$(mpc -p 6601 current -f %file%)" "${COVER}" -y &> /dev/null
	STATUS=$?

	# Check if the file has a embbeded album art
	if [ "$STATUS" -eq 0 ];then
		echo "$COVER"
	else
		echo "../../img/music.png"
	fi
}


