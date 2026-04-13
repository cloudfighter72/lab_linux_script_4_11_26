#!/bin/bash
## What is the technical term for the code on Line 1?
## What does it accomplish?

# ----------------------------
# Simple File Processing Script
# ----------------------------

##Explain lines 11 - 13. What are they and where are they used later in the script?

INPUT_FILE="input/test1.txt"
OUTPUT_DIR="output"
OUTPUT_FILE="$OUTPUT_DIR/processed.txt"

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

# What is the technical term for the code on Line 1?
# Answer: In the world of computing, the #! sequence at the start of a script is technically known as a Shebang.
# It is also occasionally referred to as a hashbang, shabang, or sharp-exclamation.

# What does it accomplish?
# Answer: The shebang is a character sequence consisting of a number sign and an exclamation point (#!) at the beginning of a script
# It tells the Unix-like operating system's program loader which interpreter should be used to execute the rest of the file

# Explain lines 11 - 13. What are they and where are they used later in the script?
# These lines are variable assignments in a Shell script. They are used to store strings—specifically file paths—into shorthand names so you don't have to type the full path every time you need it. Think of them like labels on boxes. Instead of saying "that heavy cardboard container in the far left corner of the attic," you just say "Box A."

# Breakdown of the Code
# INPUT_FILE="input/fruits.txt": Creates a variable named INPUT_FILE that points to a text file inside an input folder.

# OUTPUT_DIR="output": Stores the name of a directory where you plan to save your results.

# OUTPUT_FILE="$OUTPUT_DIR/fruits_processed.txt": This is a dynamic assignment. The $OUTPUT_DIR part tells the script to "look inside the variable named OUTPUT_DIR and put its value here."

# Since OUTPUT_DIR is "output", this variable effectively becomes "output/fruits_processed.txt".

# See if you can get the output on line 20 by intentionlly causing an error.
# Answer: You can intentionally cause an error by renaming, moving, or deleting the file that's associated with INPUT_FILE. I renamed the file to test1.txt. The output will be "Error: Input file not found!"
