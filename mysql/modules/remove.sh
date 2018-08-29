#!/bin/bash

#--------------------------------------
# Author : Tomonso Ejang
# Date   : 29th Aug 2018
# Email  : tomonso.ejang@gmail.com
#--------------------------------------

# remove mysql
sudo apt-get remove --purge mysql*
sudo apt-get purge mysql*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get remove dbconfig-mysql

