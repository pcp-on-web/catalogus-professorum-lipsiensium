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
```

