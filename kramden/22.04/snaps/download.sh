#!/bin/bash

old=$PWD
echo $old

cd `dirname $0`

#Download Ubuntu seeded snaps
for i in gnome-42-2204 gnome-3-38-2004 firefox snapd-desktop-integration core22 gtk-common-themes; do
        snap download --channel=stable $i
done

snap download --channel=preview/edge snap-store

# Download content snap needed by steam
snap download gaming-graphics-core22

#Download kramden specific snaps
for i in zoom-client vlc core18; do
        snap download --channel=stable $i
done

#Download kramden specific games
for i in aqueducts mc-installer; do
        snap download --channel=stable $i
done

#Download kramden added apps list in progress
for i in 0ad audacity blender darktable dragonsapprentice fablemaker frogsquash gcompris gnome-chess gnome-dictionary gnome-nibbles gnome-weather iagno inkscape kalzium kdenlive kgeography kolourpaint krita ktouch lazpaint leocad mapton marsshooter memory-tiles micropolis midnightmareteddy missilemath open-typer paintsupreme-3d pinta pixelorama quadrapassel spotify steam stellarium-daily supertux supertuxkart sweethome3d-homedesign tank-warriors thepassage tux-paint tuxtyping white-house; do
        snap download --channel=stable $i
done

cd ..

tar cvf snaps.tar snaps
if [ $? -eq 0 ]; then
        echo "snaps.tar archive created"
        rm snaps/*.assert snaps/*.snap
fi

cd $old
