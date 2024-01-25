#!/bin/bash

psql -U postgres -d nat_database -c "UPDATE company_clients SET tariff = '$2' WHERE company_id = $1"
