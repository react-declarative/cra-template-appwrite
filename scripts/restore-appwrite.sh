#!/usr/bin/env bash
# export MYSQL_USER=user echo $MYSQL_USER
# export MYSQL_PASSWORD=password echo $MYSQL_PASSWORD
docker-compose exec -T mariadb sh -c 'exec mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD"' < dump.sql
