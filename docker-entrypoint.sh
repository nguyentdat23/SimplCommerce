#!/bin/bash
set -e

if sudo -u postgres psql -lqt | cut -d \| -f 1 | grep simplcommerce; then
    echo "simplcommerce database existed"
else
    echo "create new database simplcommerce"
	sudo -u postgres psql -c "CREATE DATABASE simplcommerce WITH ENCODING 'UTF8'"
	sudo -u postgres psql -d simplcommerce -a -f /app/dbscript.sql
fi

cd /app && dotnet SimplCommerce.WebHost.dll 
