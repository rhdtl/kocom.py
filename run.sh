#!/bin/sh

SHARE_DIR=/share/kocom

mkdir -p $SHARE_DIR
if [ ! -f $SHARE_DIR/kocom.conf ]; then
	mv /kocom.conf $SHARE_DIR
fi
if [ ! -f $SHARE_DIR/kocom.py ]; then
	mv /kocom.py $SHARE_DIR
fi

echo "[Info] Run Kocom Wallpad with RS485! for 사상구남역동원로얄듀크"
cd $SHARE_DIR
python3 $SHARE_DIR/kocom.py

# for dev
while true; do echo "still live"; sleep 100; done
