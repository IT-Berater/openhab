#!/bin/bash

# Steuerung des OpenKarotz per FTP via OpenHAB. 
#
# Diesem Script kann der Dateiname des Fotos als Parameter übergeben werden.
# 
# Dieser Dateiname wird dann zu snapshot.jpg umbenannt.
#
# Z.b. wird snapshot_2016_03_20_18_13_21.jpg zu snapshot.jpg
#
# ftp muss installiert sein: sudo apt-get install ftp
# karotz muss durch die Adresse des Karotz ersetzt weden
#
# (c) 2016 Thomas Wenzlaff http://www.wenzlaff.info 
#

ftp -pin karotz <<END_SCRIPT
pwd
ls
cd /  
ls
cd usr
ls
cd openkarotz
ls
cd Snapshots
ls
delet snapshot.jpg
ls
rename $1 snapshot.jpg
ls
cd /
quit
END_SCRIPT