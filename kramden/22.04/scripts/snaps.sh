#!/bin/bash

cd /home && tar xvf snaps.tar

# ack all the snaps
for i in /home/snaps/*.assert; do snap ack $i;done

# side-load the snaps to bootstrap
for i in /home/snaps/core*.snap; do snap install $i;done
for i in /home/snaps/gtk*.snap; do snap install $i;done
for i in /home/snaps/gnome-*.snap; do snap install $i;done
for i in /home/snaps/{firefox,chromium,vlc,zoom-client,snapd-desktop-integration,snap-store}*.snap; do snap install $i;done
for i in /home/snaps/{mc-installer,aqueducts}*.snap; do snap install $i;done
