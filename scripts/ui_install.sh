#!/bin/bash
#sscript to installand deploy qac feedback app UI

#clone project repository
git clone https://github.com/DevQAC/QA-Portal.git

#ensure all apps are up to date
sudo apt-get update

echo =================================================================
echo "installing dependencies"
echo ================================================================
#nodejs
#precautionary curl install
sudo apt-get install curl
#nodejs install
curl -sL https://deb.nodesoource.com/setup_12.x| sudo -E bash -
sudo apt-get install -y nodejs

#angular cli
sudo NGI_CLI_ANALYTICS=ci npm install -g @angular/cli
#change directory and start ui
cd QA-Portal
cd qa-portal-angular
npm start
