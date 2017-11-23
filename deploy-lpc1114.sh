#!/bin/bash

TOP=`pwd`
mPoint=/mnt/
target=${1:-"/dev/sdd"}
binary=${2:-"$TOP/.pioenvs/lpc1114fn28/firmware.bin"}

sudo umount $mPoint > /dev/null 2>&1
sudo mount $target $mPoint && \
sudo cp $binary $mPoint/bin && \
sudo umount $mPoint

