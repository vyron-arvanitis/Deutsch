#!/bin/sh
set -eu

output="includes/sections.tex"
tmp="${output}.tmp"

find sections -maxdepth 1 -type f -name '*.tex' \
  | sort \
  | sed 's|^|\\input{|; s|\.tex$|}|' > "$tmp"

mv "$tmp" "$output"
