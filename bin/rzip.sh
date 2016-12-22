#!/bin/sh
find . '(' -name '*.ear' -o -name '*.war' ')'  -exec sh -c 'unzip -o -d ${0%.*} $0' '{}' \;
