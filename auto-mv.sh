#!/bin/bash

WATCH_DIR="/home/riki/Downloads";
while true; do
    filename=`inotifywait -e CLOSE ${WATCH_DIR} --format "%f" 2> /dev/null`;
    /home/riki/shell/filemove.sh
    ls -l ${WATCH_DIR};
    for d in `find ${WATCH_DIR} -type d`; do echo $d,`ls "$d" | wc -l`; done
done

