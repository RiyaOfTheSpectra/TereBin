#!/bin/bash

numbgs=$(ls /home/santiagorivera/Z/Photograms/Backgrounds | wc -l)
prefix="/home/santiagorivera/Z/Photograms/Backgrounds/"
suffix=".png"

lockscreen=$prefix$(printf "%02d" $((1 + $RANDOM % $numbgs)))$suffix

swaylock \
    -f\
    -i $lockscreen\
    --effect-greyscale
