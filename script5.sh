#!/bin/bash
# Script 5: Open Source Manifesto Generator - AJIT DIKSHIT 24BCE10834
# Unit 5: read input, string concat, file write, date
echo "Answer 3 questions for your manifesto:"
read -p "1. OSS tool you use daily: " TOOL
read -p "2. Freedom means (1 word): " FREEDOM
read -p "3. What you'd build/share: " BUILD
DATE=$(date "+%B %d, %Y")
OUTPUT="manifesto-${USER}.txt"
cat > "$OUTPUT" << EOF
Open Source Manifesto - $USER ($DATE)
I use $TOOL daily. Freedom means $FREEDOM to me.
I commit to building and sharing $BUILD freely.
EOF
echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
