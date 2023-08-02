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
