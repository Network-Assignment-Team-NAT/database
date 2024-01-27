#!/bin/bash

psql -U postgres -d nat_database -c "INSERT INTO company_clients (company_name, tariff, service_until) VALUES ('$1', $2, '$3');"
