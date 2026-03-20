#!/bin/bash
# Script 2: FOSS Package Inspector - AJIT DIKSHIT 24BCE10834
# Unit 2: if-then-else, case statement, rpm/dpkg
PACKAGE="apache2"
echo "=== Script 2: FOSS Package Inspector ==="
if rpm -q "$PACKAGE" >/dev/null 2>&1 || dpkg -l "$PACKAGE" >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" 2>/dev/null | grep -E "Version|License|Summary" || echo "Apache2: Open source web server"
else
    echo "$PACKAGE is NOT installed."
fi
case $PACKAGE in
    apache2|httpd) echo "Apache: Powers 30%+ of the web - open internet foundation";;
    *) echo "Unknown package";;
esac
