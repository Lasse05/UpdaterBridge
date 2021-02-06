#!/bin/bash
sudo rm -r /home/pi/tmp/
sudo mkdir /home/pi/tmp/
sudo chmod 7777 -R /home/pi/tmp/
git clone https://41264df39e2fa188c966190f779109ec8a40c6e2@github.com/Lasse05/BetaScanner.git /home/pi/tmp
sudo service beta stop
sudo rm -r /home/pi/scanner
sudo mv  /home/pi/tmp/ /home/pi/scanner/
cd /home/pi/scanner && sh update.sh
