#/bin/bash

echo "This is the basic configuaration for Ontowiki."
echo "---"


echo "Change Passwords"
echo "---"
dba_pw="$( cat /import-data/pw.sql | cut -d " " -f 4 )"
sed s/store\.virtuoso\.password\ \ \ \ \=\ \"dba\"/store\.virtuoso\.password\ \ \ \ \=\ \"$dba_pw\"/g -i /var/www/html/config.ini

echo "Customize"
echo "---"
chmod a+rwx /customize/customize.sh

