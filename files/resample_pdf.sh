#!/bin/bash
DPI=${1:-600}
# taken from https://gist.github.com/lkraider/f0888da30bc352f9d167dfa4f4fc8213
gs \
  -o paper_resampled_$DPI.pdf \
  -sDEVICE=pdfwrite \
  `#-dCompatibilityLevel=1.3` `# render entire PDF as bitmaps` \
  -dPDFSETTINGS=/prepress \
  -dDetectDuplicateImages=true \
  -dDownsampleColorImages=true -dDownsampleGrayImages=true -dDownsampleMonoImages=true \
  -dColorImageResolution=$DPI -dGrayImageResolution=$DPI -dMonoImageResolution=$DPI \
  -dPrinted=false `# preserve hyperref links` \
  -f paper.pdf
