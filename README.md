# catalogus-professorum-lipsiensium
This project provides infrastructure for the Leipzig Professors Catalog

```
docker-compose up &
```

```
docker exec -it tools_virtuoso_1 /bin/bash
```

```
chmod a+rwx /scripts/*.sh
/scripts/config-virtuoso.sh
exit
```
```
docker exec -it tools_phpserver_1 /bin/bash
```
```
/scripts/config-phpserver.sh
/customize/customize.sh
exit
```
login as dba

Add Knowledgebases:
http://catalogus-professorum.org/modell/2/
http://catalogus-professorum.org/lipsiensium/
```
docker exec -it tools_virtuoso_1 /bin/bash
```
```
mkdir tmp
cp /import-data/lipsiensium.ttl ./tmp/
dba_pw="$( cat /import-data/pw.sql | cut -d " " -f 4 )"
cmd="isql-v 1111 dba $dba_pw"
$cmd
```
```
ld_dir ('./tmp/', 'lipsiensium.ttl', 'http://catalogus-professorum.org/lipsiensium/');
rdf_loader_run();
```

