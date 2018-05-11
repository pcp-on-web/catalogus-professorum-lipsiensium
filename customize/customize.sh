#!/bin/sh

# copy Theme
cp -R /customize/theme/heloise /var/www/extensions/themes/
ln -s /var/www/extensions/themes/silverblue/sandbox /var/www/extensions/themes/heloise/sandbox
ln -s /var/www/extensions/themes/silverblue/scripts /var/www/extensions/themes/heloise/scripts

echo 'themes.default = "heloise"' >> /var/www/config.ini

# set  extension
cp /customize/extensions/*.ini /var/www/extensions/

echo 'properties[] = "http://catalogus-professorum.org/cpm/2/picture"' >> /var/www/html/extensions/imagelink/default.ini 

