#!/bin/sh
find "$1" -name "*.jar" -exec sh -c 'unzip -l {}|grep -H --label {} '$2'' \;
