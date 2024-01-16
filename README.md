# database

## How to create our database in postgerSQL

You should run this command for creating our database:

```console
psql -U postgres -f create_db
```

There you can see this file:

```console
CREATE DATABASE nat_database;
```

After that you should run this command for creating tables in our database:

```console
psql -U postgres -d nat_database -f create_tables
```

There you can see create_tables file:

```console
CREATE TABLE company_clients (company_name TEXT NOT NULL, company_id INT GENERATED ALWAYS AS IDENTITY, tariff TEXT  NOT NULL, PRIMARY KEY (company_id));
CREATE TABLE user_clients (full_name TEXT NOT NULL, home_address TEXT NOT NULL, tariff TEXT NOT NULL, PRIMARY KEY (full_name, home_address));
CREATE TABLE other_providers (asn INTEGER NOT NULL, name TEXT NOT NULL, PRIMARY KEY (asn));
CREATE TABLE traffic (start_date DATE NOT NULL, start_time TIME NOT NULL, end_date DATE NOT NULL, end_time TIME NOT NULL, traffic_size INTEGER NOT NULL);
ALTER TABLE company_clients ADD COLUMN enable_until_date DATE NOT NULL;
ALTER TABLE user_clients ADD COLUMN enable_until_date DATE NOT NULL;
ALTER TABLE traffic ADD COLUMN who_spend_it TEXT NOT NULL;
```
