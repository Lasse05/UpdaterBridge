#!/bin/bash
sudo rm -r /home/pi/tmp/
sudo chmod 7777 -R /home/pi/tmp/
sudo rm -r Scanner.zip*
sudo apt-get install unzip
wget http://betascanner.s3.amazonaws.com/Scanner.zip
unzip Scanner.zip -d /home/pi/tmp/
sudo service beta stop
sudo rm -r /home/pi/scanner
sudo mv  /home/pi/tmp/ /home/pi/scanner/
cd /home/pi/scanner && sh update.sh
