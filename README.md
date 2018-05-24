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

You can also use KBox:

```
java -jar kbox-v0.0.1-alpha3-RC16.jar -sparql "select ?s {{?s <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://catalogus-professorum.org/cpd/Person>} UNION {?s <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://uni-helmstedt.hab.de/cph/model/Person>}}" -kb "http://aditus.catalogus-professorum.org/lipsiensium,http://uni-helmstedt.hab.de/cph"
```
