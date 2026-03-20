#!/bin/bash
# Script 3: Disk and Permission Auditor - AJIT DIKSHIT 24BCE10834
# Unit 2: for loop, df, ls -ld, awk/cut
DIRS="etc varlog home usrbin tmp"
echo "Directory Audit Report"
echo "----------------------"
for DIR in $DIRS; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1 ", " $3 ", " $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR | Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist."
    fi
done
