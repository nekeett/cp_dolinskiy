#!/bin/bash
file="test"
fileOrig="/bin/nano"
fileCopy="/bin/nano1"
fileChanged=$fileOrig
sudo mv $fileOrig $fileCopy
echo $file > $fileChanged

