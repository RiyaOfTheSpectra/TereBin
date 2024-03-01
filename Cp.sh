#!/bin/bash

IFS=''
while read -r line; do
    cp $1$line .
done < $2
