#!/bin/bash

psql -U postgres -d nat_database -c "INSERT INTO user_clients (full_name, home_address, tariff, enable_until_date) VALUES ('$1', '$2', '$3', '$4');"
