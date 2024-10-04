FILE_TO_PUSH=test.txt

adb push $FILE_TO_PUSH /data/local/tmp
adb shell su -c "mv /data/local/tmp/$FILE_TO_PUSH /data/data/com.termux/files/home/remembrance-agent/files"
