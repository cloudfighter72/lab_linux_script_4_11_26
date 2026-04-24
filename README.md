# ☁️ Answers to questions posted by Uhuru

![afrosamurai.jpg](/images/afrosamurai.jpg "Cloud Proving Grounds - Wolfpack")

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-%E2%89%A51.9-844FBA?style=for-the-badge&logo=terraform&logoColor=white)
![CloudFront](https://img.shields.io/badge/CloudFront-Edge_Security-yellow?style=for-the-badge&logo=amazon-aws)
![WAFv2](https://img.shields.io/badge/AWS_WAFv2-Real_Time_Logging-red?style=for-the-badge&logo=amazonaws)
![Bedrock](https://img.shields.io/badge/Amazon_Bedrock-Auto_IR-black?style=for-the-badge&logo=amazon-aws)
![Multi_Region](https://img.shields.io/badge/Multi_Region-Transit_Gateway-blue?style=for-the-badge)
![Compliance](https://img.shields.io/badge/Compliance-HIPAA_Inspired-purple?style=for-the-badge)
![Observability](https://img.shields.io/badge/Observability-CloudWatch_&_Bedrock-green?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Production_Grade-success?style=for-the-badge)

---

## Questions

1. **What is the technical term for the code on Line 1?**

- **Answer**: `In the world of computing, the #! sequence at the start of a script is technically known as a Shebang.
It is also occasionally referred to as a hashbang, shabang, or sharp-exclamation.`

1. **What does it accomplish?**

- **Answer**: `The shebang is a character sequence consisting of a number sign and an exclamation point (#!) at the beginning of a script
It tells the Unix-like operating system's program loader which interpreter should be used to execute the rest of the file.`

1. **Explain lines 11 - 13. What are they and where are they used later in the script?**

- `These lines are variable assignments in a Shell script. They are used to store strings—specifically file paths—into shorthand names so you don't have to type the full path every time you need it. Think of them like labels on boxes. Instead of saying "that heavy cardboard container in the far left corner of the attic," you just say "Box A."`

---

## Breakdown of the Code

```bash
INPUT_FILE="input/fruits.txt": Creates a variable named INPUT_FILE that points to a text file inside an input folder.

OUTPUT_DIR="output": Stores the name of a directory where you plan to save your results.

OUTPUT_FILE="$OUTPUT_DIR/fruits_processed.txt": This is a dynamic assignment. The $OUTPUT_DIR part tells the script to "look inside the variable named OUTPUT_DIR and put its value here."

Since OUTPUT_DIR is "output", this variable effectively becomes "output/fruits_processed.txt".
```

## Intentionally creating an error by changing or modifying line 20

**Goal: See if you can get the output on line 20 by intentionlly causing an error.**

- **Answer**: `You can intentionally cause an error by renaming, moving, or deleting the file that's associated with INPUT_FILE. I renamed the file to test1.txt. The output will be "Error: Input file not found!"`
