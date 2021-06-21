#!/bin/bash

filename=$(date +"%d-%m-%Y_%R")
echo $(date +"%d-%m-%Y_%R")
echo $filename > $filename

find /home/ubnt1/test0206/ -type f -mtime +7 -print0 | xargs -0 rm -f

rsync -avz -e "ssh -p 22" --progress --delete /home/ubnt1/test0206/ ubnt2@192.168.55.176:/home/ubnt2/test0206
