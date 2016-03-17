#!/bin/sh
find . '(' -name '*.ear' -o -name '*.war' -o -name 'GPMEJB*.jar' ')'  -exec sh -c 'unzip -o -d ${0%.*} $0' '{}' \;
