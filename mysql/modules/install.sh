#!/bin/bash

#--------------------------------------
# Author : Tomonso Ejang
# Date   : 29th Aug 2018
# Email  : tomonso.ejang@gmail.com
#--------------------------------------

# Create directory named "package" if it doesn't exist. Download the official MySql repo from Oracle into the directory.
cd $HOME/scripts/mysql

FILE=mysql-apt-config_0.8.10-1_all.deb
PKG_DIR=package

[ -d package ] || mkdir package

if [ ! -f  $PKG_DIR/$FILE ]; then
	wget https://dev.mysql.com/get/$FILE -P ./$PKG_DIR/
else
	echo "\e[44mMySql APT config : Not Downloaded (File Exists).\e[49m"
fi

# Go to Package Directory, Add the Repo
cd $HOME/scripts/mysql/$PKG_DIR
dpkg -i $FILE

# Come back to script root directory, update apt repo cache and install the package
cd $HOME/scripts/mysql
sudo apt update
sudo apt install mysql-server
