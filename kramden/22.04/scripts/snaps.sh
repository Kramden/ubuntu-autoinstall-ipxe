#!/bin/bash

cd /home && tar xvf snaps.tar

# ack all the snaps
for i in /home/snaps/*.assert; do snap ack $i;done

# side-load the snaps to bootstrap
for i in /home/snaps/core*.snap; do snap install $i;done
for i in /home/snaps/gtk*.snap; do snap install $i;done
for i in /home/snaps/gnome-*.snap; do snap install $i;done
snap install gaming-graphics-core22*.snap
for i in /home/snaps/{firefox,chromium,vlc,zoom-client,snapd-desktop-integration,snap-store}*.snap; do snap install $i;done
for i in /home/snaps/{mc-installer,aqueducts}*.snap; do snap install $i;done
for i in /home/snaps/{0ad,audacity,blender,darktable,dragonsapprentice,fablemaker,frogsquash,gcompris,gnome-chess,gnome-dictionary,gnome-nibbles,gnome-weather,iagno,inkscape,kalzium,kdenlive,kgeography,kolourpaint,krita,ktouch,lazpaint,leocad,mapton,marsshooter,memory-tiles,micropolis,midnightmareteddy,missilemath,open-typer,paintsupreme-3d,pinta,pixelorama,quadrapassel,spotify,steam,stellarium-daily,supertux,supertuxkart,sweethome3d-homedesign,tank-warriors,thepassage,tux-paint,tuxtyping,white-house}*.snap; do snap install $i;done
