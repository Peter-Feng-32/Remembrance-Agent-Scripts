#!/bin/bash

adb shell su -c "mkdir /data/data/com.termux/files/home/remembrance-agent"
adb shell su -c "mkdir /data/data/com.termux/files/home/remembrance-agent/bin"
adb shell su -c "mkdir /data/data/com.termux/files/home/remembrance-agent/files"
adb shell su -c "mkdir /data/data/com.termux/files/home/remembrance-agent/index"

adb push ra-index /data/local/tmp
adb push ra-retrieve /data/local/tmp
adb shell su -c "mv /data/local/tmp/ra-index /data/data/com.termux/files/home/remembrance-agent/bin"
adb shell su -c "mv /data/local/tmp/ra-retrieve /data/data/com.termux/files/home/remembrance-agent/bin"

