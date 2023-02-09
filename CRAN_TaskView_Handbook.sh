#!/bin/bash
#------------------------------------------
# Semi-automatic routine
# With auto-compilation
# to .fb2 or .epub file
# via wget & pandoc
#------------------------------------------

# Downloading temporal files into tmp
# Using 8-second timeout to make the server contact friendly
wget -N -P tmp/ --wait=8 --random-wait --input-file=src/cran_url.txt

# Use Pandoc to convert to epub from multiple html pages:
cd tmp/
pandoc -f html -t fb2 -o CRAN_TaskView_Hanbook.fb2 (ls *.html)      # to single fb2
pandoc -f html -t epub -o CRAN_TaskView_Hanbook.epub (ls *.html)    # to single epub

# Move the files to the special folder for that
mv CRAN_TaskView_Hanbook.fb2 ../handbooks/
mv CRAN_TaskView_Hanbook.epub ../handbooks/

# Delete unnecessary *.html files
rm *html