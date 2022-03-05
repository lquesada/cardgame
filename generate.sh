#!/bin/bash

leftid=`echo $1 | cut -f 1 -d '-'`
leftopts=`echo $1 | cut -f 2 -d '-'`
leftheight=12.428883
if [[ "$leftopts" == *"mid"* ]]; then
  leftheight=9.22
fi
if [[ "$leftopts" == *"high"* ]]; then
  leftheight=7.22
fi
cp input/*/$leftid.png inputleft.png

rightid=`echo $2 | cut -f 1 -d '-'`
rightopts=`echo $2 | cut -f 2 -d '-'`
rightheight=12.428883
if [[ "$rightopts" == *"mid"* ]]; then
  rightheight=9.22
fi
if [[ "$rightopts" == *"high"* ]]; then
  rightheight=7.22
fi
cp input/*/$rightid.png inputright.png

cat template.svg | sed \
  -e "s/%LEFT%/$(echo $leftid | sed 's/^0*//')/g" \
  -e "s/%LEFTHEIGHT%/$leftheight/g" \
  -e "s/%RIGHT%/$(echo $rightid | sed 's/^0*//')/g" \
  -e "s/%RIGHTHEIGHT%/$rightheight/g" \
> tmp.svg

inkscape \
--export-background='#ffffff' \
--export-background-opacity=255 \
--export-dpi=600 \
--export-png=output/$leftid-$rightid.png \
--export-area-page \
tmp.svg

rm -f tmp.svg inputleft.png inputright.png
