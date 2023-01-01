#!/usr/bin/env bash
# export MYSQL_USER=user echo $MYSQL_USER
# export MYSQL_PASSWORD=password echo $MYSQL_PASSWORD
docker-compose exec mariadb sh -c 'exec mysqldump --all-databases --add-drop-database -u"$MYSQL_USER" -p"$MYSQL_PASSWORD"' > ./dump.sql
