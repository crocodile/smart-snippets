#!/bin/bash
tar -zcvf archive/smart-snippets.tar.gz dave
echo -e "The SHA256 hash is:"
shasum -a 256 smart-snippets.tar.gz | awk '{printf $1}'
echo ""