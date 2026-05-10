#!/bin/bash
date=$(date +%Y-%m-%d)
docker exec projecte_taller-db-1 mariadb-dump --all-databases -uroot -pexample > backup_${date}.sql