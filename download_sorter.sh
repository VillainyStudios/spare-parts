#!/bin/bash

# File type arrays and correct locations
img=(
	jpg
	png
	gif
)
imgdir=./

audio=(
	mp3
	ogg
	flac
)
audiodir=./

doc=(
	doc
	docx
	txt
)
docdir=./

vid=(
	mp4
	flv
	webm
)
viddir=./

# Determines the folders
listing=`find . -mindepth 1 -maxdepth 1 -type d`
## do for loop with the above as a variable to populate the list of folders
## for the work area below to sort.




# does the actual work
for n in $listing; do
	echo "Running in $n"
	cd $n
	for i in *; do
		ext=${i##*\.}
		case "$ext" in
			"$img")  echo "$i is an image"; mv $i $imgdir;;
			"$audio") echo "$i is an audio file"; mv $i $audiodir;;
			"$doc") echo "$i is a document"; mv $i $docdir;;
			"$vid") echo "$i is a document"; mv $i $viddir;;
			*) continue;;
	
		esac
	done
	cd ..
done
