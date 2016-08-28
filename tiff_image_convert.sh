#!/bin/bash

#takes all the .tiff files in current directory and save them as .pngs files under a new directory 'pngs'

rm -r pngs
mkdir pngs  

#for each tiff file in existing directory
for tiffFile in *.tiff
do
    filename=$(basename "$tiffFile")
    filename="${filename%.*}" #get image file without extension 
    sips -s format png $tiffFile --out pngs/$filename.png   #convert tiff file to png file
done
