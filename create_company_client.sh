#!/bin/bash

psql -U postgres -d nat_database -c "INSERT INTO company_clients (company_name, tariff, enable_until_date) VALUES ('$1', '$2', '$3');"
