#!/bin/bash

psql -U postgres -d nat_database -c "UPDATE user_clients SET tariff = '$3' WHERE full_name = '$1' and home_address = '$2'"
