#!/bin/sh

mkdir -v 128
cp -rvn 16/* 128
find 128 -type f -name "*.png" -exec mogrify -resize 128x128! -filter point  -verbose {} \;
