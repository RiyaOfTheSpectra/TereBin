#!/bin/bash

numbgs=$(ls $HOME/Z/Photograms/Backgrounds | wc -l)
prefix="$HOME/Z/Photograms/Backgrounds/"
suffix=".png"

lockscreen=$prefix$(printf "%02d" $((1 + $RANDOM % $numbgs)))$suffix

swaylock -f -i $lockscreen
