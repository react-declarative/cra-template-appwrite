#!/usr/bin/env bash
# docker compose down
# docker volume ls
docker volume rm integration-for-gitpod_appwrite-builds
docker volume rm integration-for-gitpod_appwrite-cache
docker volume rm integration-for-gitpod_appwrite-certificates
docker volume rm integration-for-gitpod_appwrite-config
docker volume rm integration-for-gitpod_appwrite-functions
docker volume rm integration-for-gitpod_appwrite-influxdb
docker volume rm integration-for-gitpod_appwrite-mariadb
docker volume rm integration-for-gitpod_appwrite-redis
docker volume rm integration-for-gitpod_appwrite-uploads
# docker compose up
