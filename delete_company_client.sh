#!/bin/bash

psql -U postgres -d nat_database -c "DELETE FROM company_clients WHERE company_id = $1"
