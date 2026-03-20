#!/bin/bash
# Script 4: Log File Analyzer - AJIT DIKSHIT 24BCE10834
# Units 2-5: while read loop, if-then, counters, arguments
LOGFILE="${1:-/var/log/syslog}"
KEYWORD="${2:-ERROR}"
COUNT=0
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        ((COUNT++))
    fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
