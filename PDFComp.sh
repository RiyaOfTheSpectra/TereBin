#!/bin/bash

temp="${1}.comp"
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dBATCH  -dQUIET -sOutputFile=$temp $1
mv $temp $1
