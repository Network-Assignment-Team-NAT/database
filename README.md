# database

## How to create our database in postgerSQL

```console
CREATE DATABASE nat_database;
\c nat_database
CREATE TABLE companie_clients (company_name TEXT NOT NULL, company_id INT GENERATED ALWAYS AS IDENTITY, tariff TEXT  NOT NULL);
CREATE TABLE user_clients (name_surname_patronymic TEXT NOT NULL, home_address TEXT  NOT NULL, tariff TEXT  NOT NULL);
CREATE TABLE other_providers (asn BIGINT NOT NULL, name TEXT NOT NULL);
```
