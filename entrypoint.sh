#!/bin/bash

echo "Waiting for PostgreSQL to start..."
while ! pg_isready -h odoo-db -p 5432 -U odoo; do
  sleep 1
done

echo "Initializing Odoo database..."
odoo -i base --without-demo=all --db_host=odoo-db --db_user=odoo --db_password=odoo

echo "Starting Odoo..."
exec odoo "$@"
