#!/bin/bash
if curl -s http://localhost:5000/vehicles; then
    echo "API OK"
else
    echo "API KO"
fi

if docker exec db mysqladmin ping -uroot -pexample; then
    echo "DB OK"
else
    echo "DB KO"
fi