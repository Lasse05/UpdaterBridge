#!/bin/bash
sudo rm -r /home/pi/tmp/
sudo mkdir /home/pi/tmp/
sudo chmod 7777 -R /home/pi/tmp/
git clone https://github.com/Lasse05/BetaScanner.git /home/pi/tmp
sudo service beta stop
sudo rm -r /home/pi/scanner
sudo mv  /home/pi/tmp/ /home/pi/scanner/
cd /home/pi/scanner && sh update.sh
