#/bin/bash

echo "This is the basic configuaration for Virtuoso."
echo "---"

echo "Change Passwords"
echo "---"
isql-v 1111 dba dba /import-data/pw
dba_pw="$( cat /import-data/pw | cut -d " " -f 4 )"

echo "Import knowledgebases from /import-data/"
echo "---"

