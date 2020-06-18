#!/bin/zsh

for filename in static/IGAI/*.pdf; do
    [ -e "$filename" ] || continue
	complaint=$(basename $filename .pdf)
	echo "$complaint"
done
