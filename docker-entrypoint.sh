#!/bin/bash
export PGPASSWORD='123qwe!!'; 
set -e

if psql -h 127.0.0.1 -p 5432 -U postgres -lqt | cut -d \| -f 1 | grep simplcommerce; then
    echo "simplcommerce database existed"
else
    echo "create new database simplcommerce"
	psql -h 127.0.0.1 -p 5432 -U postgres -c "CREATE DATABASE simplcommerce WITH ENCODING 'UTF8'"
	psql -h 127.0.0.1 -p 5432 -U postgres -d simplcommerce -a -f /app/dbscript.sql
fi

cd /app && dotnet SimplCommerce.WebHost.dll 
