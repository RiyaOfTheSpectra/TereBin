#!/usr/local/bin/python3.12

import os
import re
from tqdm import tqdm
import argparse
import threading

parser = argparse.ArgumentParser()
parser.add_argument('-f', '--file', help="Specific file to recompress.", type=str)
parser.add_argument('-q', '--quality', help="Quality to compress to.", type=int, default=100)
parser.add_argument('-t', '--type', help="Type to convert to.", type=str, default='jpg')

args = parser.parse_args()

if not os.path.exists("compressed"):
    os.system("mkdir compressed")

files = os.listdir()

if args.file:
    os.system("magick " + args.file + " compressed/" + args.file[0:-3] + "jpg")

#threads = []
for i in tqdm(files):
    if re.match(r".*png", i) or re.match(r".*jpg", i) or re.match(r".*tif", i) or re.match(r".*tiff", i):
        if not os.path.exists("compressed/" + i[0:-3] + "jpg"):
            command = f"magick -quality {args.quality} " + i + " compressed/" + i[0:-3] + "jpg"
            os.system(command)
            """
            threads.append(
                threading.Thread(
                    target=os.system,
                    args=(command,)
                    )
                )
            """

"""
for t in threads:
    t.start()

for t in tqdm(threads):
    t.join()
"""
