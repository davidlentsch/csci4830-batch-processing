#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WC="$(wc -w ${f})"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $WC"
  fi
done

