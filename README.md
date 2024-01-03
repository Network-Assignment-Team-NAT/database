# database

## How to create our database in postgerSQL

```console
CREATE DATABASE nat_database;
\c nat_database
CREATE TABLE company_clients (company_name TEXT NOT NULL, company_id INT GENERATED ALWAYS AS IDENTITY, tariff TEXT  NOT NULL, PRIMARY KEY (company_id));
CREATE TABLE user_clients (full_name TEXT NOT NULL, home_address TEXT NOT NULL, tariff TEXT NOT NULL, PRIMARY KEY (full_name, home_address));
CREATE TABLE other_providers (asn INTEGER NOT NULL, name TEXT NOT NULL, PRIMARY KEY (asn));
```
