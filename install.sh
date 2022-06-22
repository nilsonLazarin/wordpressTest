#! /bin/bash

mysql -u root < database.sql
mv /var/www/html /var/www/html.OLD
mv wordpress /var/www/html
chmod 775 /var/www/html -R
	
