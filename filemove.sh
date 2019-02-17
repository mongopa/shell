#!/bin/bash

BASEDIR="/home/riki/Downloads";

declare -A FILETYPE;
FILETYPE=(
    ["jpeg"]="画像"
    ["jpg"]="画像"
    ["gif"]="画像"
    ["mp3"]="音楽"
    ["xlsx"]="エクセル"
    ["xls"]="エクセル"
    ["pdf"]="PDF"
    ["zip"]="zipファイル"
);

for file in $(ls $BASEDIR);
do
    ext="${file##*.}";
    if [ "${FILETYPE[${ext}]}" != "" ]; then
        if [ ! -d "${BASEDIR}/${FILETYPE[${ext}]}" ]; then
          mkdir -p "${BASEDIR}/${FILETYPE[${ext}]}";
        fi
        mv "${BASEDIR}/${file}" "${BASEDIR}/${FILETYPE[${ext}]}";
    fi
done;