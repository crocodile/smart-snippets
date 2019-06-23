#!/bin/bash
tar -zcvf archive/smart-snippets.tar.gz dave dave.csv

# Generating hash for brew tap distribution
echo -e "The SHA256 hash is:"
shasum -a 256 archive/smart-snippets.tar.gz | awk '{printf $1}'
echo ""