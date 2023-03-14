#!/bin/bash

old=$PWD
echo $old

cd `dirname $0`
for i in gnome-42-2204 gnome-3-38-2004 firefox snapd-desktop-integration zoom-client vlc core18 core22 gtk-common-themes; do
        snap download --channel=stable $i
done

snap download --channel=preview/edge snap-store

cd ..

tar cvf snaps.tar snaps
if [ $? -eq 0 ]; then
	echo "snaps.tar archive created"
	rm snaps/*.assert snaps/*.snap
fi

cd $old
