#!/bin/sh
find "$1" '(' -name "*.jar" -o -name "*.war" -o -name "*.zip" ')' -exec sh -c 'unzip -l {}|grep -H --label {} '$2'' \;
