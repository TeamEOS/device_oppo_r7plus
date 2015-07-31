#!/bin/sh

set -e

export VENDOR=oppo
export DEVICE=r7

function extract() {
for FILE in `egrep -v '(^#|^$)' $1`; do
OLDIFS=$IFS IFS=":" PARSING_ARRAY=($FILE) IFS=$OLDIFS
FILE=`echo ${PARSING_ARRAY[0]} | sed -e "s/^-//g"`
DEST=${PARSING_ARRAY[1]}
if [ -z $DEST ]; then
DEST=$FILE
fi
DIR=`dirname $FILE`
if [ ! -d $2/$DIR ]; then
mkdir -p $2/$DIR
fi
# Try EOS target first
adb pull /system/$DEST $2/$DEST
# if file does not exist try OEM target
if [ "$?" != "0" ]; then
adb pull /system/$FILE $2/$DEST
fi
done
}


BASE=../../../vendor/oppo/r7/proprietary
rm -rf $BASE/*

DEVBASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $DEVBASE/*

extract ../../$VENDOR/$DEVICE/proprietary-files.txt $DEVBASE

./../../r7/setup-makefiles.sh
