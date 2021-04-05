#!/bin/bash

#simple script for resizing images in all class directories
#also reformats everything from whatever to png

if [ `echo * /home/suresh/srinivas/training-images/*.jpeg 2> /dev/null | wc -l ` -gt 0 ]; then
  echo hi
  for file in /home/suresh/srinivas/training-images/*.jpeg; do
    convert "$file" -resize 8x8\! "${file%.*}.png"
    file "$file" #uncomment for testing
    rm "$file"
  done
fi


if [ `echo */home/suresh/srinivas/test-images/*.jpeg 2> /dev/null | wc -l ` -gt 0 ]; then
  echo hi
  for file in /home/suresh/srinivas/test-images/*.jpeg; do
    convert "$file" -resize 8x8\! "${file%.*}.png"
    file "$file" #uncomment for testing
    rm "$file"
  done
fi

