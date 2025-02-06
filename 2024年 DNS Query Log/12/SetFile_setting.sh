#!/bin/bash

current_dir=$(cd "$(dirname "$0")" && pwd)
main_file="$current_dir/GL-MT3000 (Beryl AX) AdGuardHome Query Log - 2024-12-"

for ((i = 1; i <= 31; i++)); do
  j=$(printf "%02d\n" $i)
  SetFile -m "12/$j/2024 23:59" "$main_file${j}.pdf"
  SetFile -d "12/$j/2024 23:59" "$main_file${j}.pdf"
done
