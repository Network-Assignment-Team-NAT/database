#!/bin/bash

psql -U postgres -d nat_database -c "INSERT INTO traffic (start_date, start_time, end_date, end_time, traffic_size, who_spend_it) VALUES ('$1', '$2', '$3', '$4', '$5', '$6');"
