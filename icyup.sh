#!/usr/bin/env bash

random_name="$(tr -dc 'a-zA-Z0-9' < /dev/random | fold -w 5 | head -n 1)"

latest="$HOME/pics/scrots/latest.png"

upload() {
    file="$(basename "$1")"
	ext="${file##*.}"
	fullname="$random_name.$ext"
	scp -P 22222 "$1" fern-remote:~/www/icy/uploads/"$fullname"
	echo "https://x.icyphox.sh/$fullname"
	echo "https://x.icyphox.sh/$fullname" | xclip -selection clipboard
}

if [ "$1" == "l" ]; then
    upload "$latest" 
elif [ "$1" != "l" ]; then
   upload "$1" 
else
	echo "no path specified :v"
fi
