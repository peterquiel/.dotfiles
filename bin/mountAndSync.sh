#!/bin/bash
mount /mnt/fritz 
rsync -Crtv ~/Documents /mnt/fritz
rsync -Crtv ~/Backup /mnt/fritz
