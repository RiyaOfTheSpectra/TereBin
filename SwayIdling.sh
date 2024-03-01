#!/bin/bash

spotifyd & oldpid=$!
swayidle -w before-sleep kill $oldpid & Lock.sh
swayidle -w after-resume spotifyd & oldpid=$!
