# cardgame
Copyright (c) 2022, Luis Quesada Torres - https://github.com/lquesada | www.luisquesada.com

Card game generator script for printed cards.

This is a rough script that I quickly put together for my specific use case. It works though but is limited in options. Feel free to edit or expand.

Check cardfront.png, mask.png, and input/ for the example input. Check output/ for the example output.

The output consists of png files that can be printed in 9x13cm photo paper. Each of these pictures contains two 5x7cm cards (including a reasonable bleeding area) that can be cut with guillotine or a 5x7cm photo puncher. Corners can be made round with a corner cutter.

Rough description/instructions:
- Install the font.
- Install inkscape, tested with v0.92.
- Run script.sh to generate output/ from input/

How to edit:
- Edit cardfront.png for the card design and mask.png for the image mask.
- Edit/add pictures to subdirectories in input/.
- Add those new pictures to script.sh.
  e.g. bash ./generate.sh 005 006 will generate a photo print for cards 005 and 006 and name it 005-006.png.
  e.g. bash ./generate.sh 005-mid 006-high will add some Y axis correction (check output for an example). Output will still be named 005-006.png.
- You may edit generate.sh to edit the text in the cards.
- You may edit template.svg to edit the components, but you may need to edit the file afterwards to put %LEFT%, %LEFTHEIGHT%, %RIGHT%, %RIGHTHEIGHT% back in place, and any other annotations you want.
