#!/bin/bash

old=$PWD
echo $old

cd `dirname $0`

wget -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -O anydesk_amd64.deb https://download.anydesk.com/linux/anydesk_6.2.1-1_amd64.deb

cd $old
