#!/bin/bash
sudo rm -r /home/pi/tmp/
sudo mkdir /home/pi/tmp/
sudo chmod 7777 -R /home/pi/tmp/
git clone https://7ce2928386b2f071ac66e8d6de5bc9407a7f6dd6@github.com/Lasse05/BetaScanner.git /home/pi/tmp
sudo service beta stop
sudo rm -r /home/pi/scanner
sudo mv  /home/pi/tmp/ /home/pi/scanner/
cd /home/pi/scanner && sh update.sh
