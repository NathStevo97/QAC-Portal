#!/bin/bash
#script to install and set up postgreSQL database

#install postgreSQL
sudo apt update
sudo apt install postgresql postgresql-contrib

#start postgresql
sudo service postgresql start

#switch to postgresql user (created in install) and create db

