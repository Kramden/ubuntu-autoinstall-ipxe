#!/bin/bash

old=$PWD
echo $old
dir=$(dirname $(realpath $0))

cd $dir

echo `pwd`
mkdir $dir/first && cd $dir/first
echo `pwd`
#Download base and content snaps
for i in gnome-42-2204 gnome-3-38-2004 gtk-common-themes; do
        snap download --channel=stable/ubuntu-22.04 $i
done

snap download --channel=stable core22

#Needed for vlc
#snap download --channel=stable core18

cd $dir
echo `pwd`
mkdir $dir/second && cd $dir/second
echo `pwd`

snap download --channel=stable/ubuntu-22.04 snapd-desktop-integration
snap download --channel=preview/edge snap-store
snap download --channel=stable/ubuntu-23.04 firefox

#Download kramden specific snaps
#for i in zoom-client vlc; do
#        snap download --channel=stable $i
#done

#Download kramden specific games
for i in gnome-2048 quadrapassel gnome-chess gnome-nibbles frogsquash mc-installer iagno; do
        snap download --channel=stable $i
done

#Download kramden added apps list in progress
for i in spotify gnome-weather gnome-dictionary; do
        snap download --channel=stable $i
done

cd $dir/..

tar cvf snaps.tar snaps
if [ $? -eq 0 ]; then
        echo "snaps.tar archive created"
        rm -rf snaps/{first,second}
fi

cd $old
