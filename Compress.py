#!/bin/python

import os
import re
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-f', '--file', help="Specific file to recompress.", type=str)

args = parser.parse_args()

files = os.listdir()

if not os.path.exists("compressed"):
    os.system("mkdir compressed")

if args.file:
    os.system("magick " + args.file + " compressed/" + args.file[0:-3] + "jpg")

for i in files:
    if re.match(r".*png", i) or re.match(r".*tif", i) or re.match(r".*tiff", i):
        if not os.path.exists("compressed/" + i[0:-3] + "jpg"):
            os.system("magick " + i + " compressed/" + i[0:-3] + "jpg")
