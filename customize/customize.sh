#!/bin/sh

# copy Theme
cp -R /customize/theme/cpl /var/www/html/extensions/themes/
ln -s /var/www/html/extensions/themes/silverblue/sandbox /var/www/html/extensions/themes/cpl/sandbox
ln -s /var/www/extensions/htm/themes/silverblue/scripts /var/www/html/extensions/themes/cpl/scripts

echo 'themes.default = "cpl"' >> /var/www/html/config.ini

# set  extension
cp /customize/extensions/*.ini /var/www/html/extensions/

echo 'properties[] = "http://catalogus-professorum.org/cpm/2/picture"' >> /var/www/html/extensions/imagelink/default.ini 

