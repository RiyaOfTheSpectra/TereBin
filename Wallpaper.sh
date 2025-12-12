#!/bin/bash

prefix="$HOME/Z/Photograms/Backgrounds/"
suffix=".png"

time=$((450 + $RANDOM % 600))

while true
do
    numbgs=$(ls $HOME/Z/Photograms/Backgrounds | wc -l)
    upfile=$prefix$(printf "%02d" $((1 + $RANDOM % $numbgs)))$suffix
    swaybg -c 16000b -m fit -i $upfile &
    oldpid=$!
    sleep $time
    kill $oldpid
done
