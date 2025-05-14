#!/bin/python

import os
import re

files = os.listdir()

if not os.path.exists("compressed"):
    os.system("mkdir compressed")

for i in files:
    if re.match(r".*png", i) or re.match(r".*tif", i) or re.match(r".*tiff", i):
        if not os.path.exists("compressed/" + i[0:-3] + "jpg"):
            os.system("magick " + i + " compressed/" + i[0:-3] + "jpg")
