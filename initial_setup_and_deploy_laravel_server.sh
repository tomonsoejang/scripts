# php7.0-mysql : required by mysql
# php7.0-fpm : required by nginx

sudo apt-get install composer php7.0-zip php7.0-xml php7.0-curl php7.0-mbstring php7.0-mysql php7.0-bcmath php7.0-fpm mysql-server

#INSTALL LARAVEL
#*********************************************
$ composer global require laravel/installer

#add composer path to .bashrc
#********************************************
echo "#LINES ADDED BY TOMONSO">~/.bashrc
echo "COMPOSER=$HOME/.config/composer/vendor/bin" >> ~/.bashrc
echo "PATH+=$PATH:$COMPOSER" >> ~/.bashrc

TABLENAME=teestore
create database $TABLENAME default character set utf8mb4 default collate utf8mb4_unicode_ci;

#Download the source code
cd /var/www/html
REPOSITORY_LINK=http://gitlab.conversionlab.online/msonowal/teestore.git
git clone $REPOSITORY_LINK

#Change to project directory
cd teestore

#Changing permission of storage and bootstrap/cache
sudo chmod -R 777 storage bootstrap/cache

php artisan migrate --seed


sudo cp nginx_configuration_file /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/nginx_configuration_file /etc/nginx/sites-enabled
