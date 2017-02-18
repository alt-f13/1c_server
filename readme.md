# 1C Enterprise server x86 8.3.9-2170 HTTP docker image

### postgresql
```bash
docker run -d \
-p 5432:5432 \
--restart=always \
-v /docker/1c/pg_sql:/var/lib/postgresql/data \
-e POSTGRES_PASSWORD=** \
--name 1c_postgres \
temrdm/1c_postgres
```



```
docker run -d  \
--name 1c_server \
--restart=always \
-v /docker/1c/data:/root/.1cv8 \
-v /docker/1c/apache2:/etc/apache2/ \
-v /docker/1c/html:/var/www/html \
-v /docker/1c/logs:/var/log/1c \
-p 4010:80 \
-p 1540-1541:1540-1541 \
-p 1560-1591:1560-1591 \
-h db \
-e VIRTUAL_HOST=1c-demo.2d-it.ru \
altf13/1c_server
```

### Публикация базы на Web сервере:
```
docker exec -it 1c_server /bin/add-web.sh ${db_name}
```
### Бэкап всех баз postgresql

```
docker exec -it 1c_postgres dumpall
```
