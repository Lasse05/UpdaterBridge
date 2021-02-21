#!/bin/bash
sudo rm -r /home/pi/tmp/
sudo chmod 7777 -R /home/pi/tmp/
wget http://betascanner.s3.amazonaws.com/tmp.zip
unzip tmp.zip -d tmp/
sudo service beta stop
sudo rm -r /home/pi/scanner
sudo mv  /home/pi/tmp/ /home/pi/scanner/
cd /home/pi/scanner && sh update.sh
