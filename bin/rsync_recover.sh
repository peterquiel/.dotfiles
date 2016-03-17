#!/bin/sh

RSYNC="/usr/bin/rsync"
OPTIONS="-azun -e ssh"
OPTIONSOK="-avzu -e ssh"
FFPATH="/home/pedda/rsync/exclude.txt"
SOURCE="pedda@kylie:/home/pedda/"
DEST="/home/pedda/"
DATE=$(date +%Y%m%d_%H%M)
LOGFILE="/home/pedda/rsync/log/sync_$DATE"


# erstellt eine liste der dateien
#echo "rsync wird gestartet..."
nice -n 19 $RSYNC $OPTIONS $SOURCE $DEST --log-format %n --exclude-from=$FFPATH > $LOGFILE

#vim $LOGFILE
#echo "Wollen sie die angezeigten Dateien uebertragen? [y/n]: "
#read eingabe
#if test $eingabe = "y"
#then
echo "Sync laeuft...bitte warten..."
nice -n 19 $RSYNC $OPTIONSOK $SOURCE $DEST --log-format %n --exclude-from=$FFPATH
echo "Sync beendet!"
#else
#� � echo "Sync abgebrochen!"
#fi