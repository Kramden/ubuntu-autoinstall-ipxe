#!/bin/bash

cd /home && tar xvf snaps.tar

# ack all the snaps
for i in /home/snaps/first/*.assert; do snap ack $i;done
for i in /home/snaps/second/*.assert; do snap ack $i;done

# side-load the snaps to bootstrap
for i in /home/snaps/first/core*.snap; do snap install $i;done
for i in /home/snaps/first/gtk*.snap; do snap install $i;done
for i in /home/snaps/first/gnome-*.snap; do snap install $i;done
for i in /home/snaps/second/*.snap; do snap install $i;done

snap switch --channel=latest/stable/22.04 core22
snap switch --channel=latest/stable/22.04 gtk-common-themes
snap switch --channel=latest/stable/22.04 gnome-42-2204
snap switch --channel=latest/stable/22.04 snapd-desktop-integration
snap switch --channel=latest/stable/22.04 firefox
snap switch --channel=latest/stable/23.10 snap-store
snap remove --purge lxd
