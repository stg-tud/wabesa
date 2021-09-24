#!/bin/bash
# Creates a wasm file for all wat files of the benchmark.

# Get a list of all wat files that are contained in the benchmark.
watFiles=$(find -type f -name "*.wat")

# Loop over all wat files.
for watFile in $watFiles
do
  # Create wasm file
  wat2wasm $watFile -o ${watFile%.*}.wasm
done