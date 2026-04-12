#!/bin/bash

## What is the technical term for the code on Line 1
## What does it accomplish

# ----------------------------
# Simple File Processing Script
# ----------------------------

##Explain lines 11 - 13. What are they and where are they used later in the script?

INPUT_FILE="input/fruits.txt"
OUTPUT_DIR="output"
OUTPUT_FILE="$OUTPUT_DIR/fruits_processed.txt"

mkdir -p "$OUTPUT_DIR"

# see if you can get the output on line 20 by intentionlly causing an error.

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file not found!"
    exit 1
fi

echo "Processing file..."

# 
while IFS= read -r line
do
    
    processed_line="PROCESSED: $(echo "$line" | tr '[:lower:]' '[:upper:]')"

    
    echo "$processed_line" >> "$OUTPUT_FILE"

done < "$INPUT_FILE"

echo "Done!"
echo "Output written to: $OUTPUT_FILE"