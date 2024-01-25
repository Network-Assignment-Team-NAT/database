#!/bin/bash

psql -U postgres -d nat_database -c "DELETE FROM user_clients WHERE full_name = '$1' and home_address = '$2'"
