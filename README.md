# database

## How to work with our database

Every parameter should be between '';

Scripts `create_company_client.sh` and `create_user_client.sh` can help to add new clients.

### `create_company_client.sh` usages

Date should be in format 'yyyy-mm-dd' and it is last day when traffic will be allowed.

```console
./create_company_client.sh 'Name of the company' 'Tariff type' 'Date'
```

### `create_user_client.sh` usages

Information for date is the same.

You should run this command for creating our database:

```console
psql -U postgres -f create_db
```

There you can see this file:

```console
script_for_create_db
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
=======
./create_company_client.sh 'Person full name' 'Person address' 'Traffic type' 'Date'
```

Scripts `delete_company_client.sh` and `delete_user_client.sh` allow delete clients.

### `delete_company_client.sh` usages

```console
./delete_company_client.sh 'Personal id'
```

### `delete_user_client.sh` usages

```console
./delete_user_client.sh 'Person full name' 'Person address'
```

Scripts `update_company_tariff.sh` and `update_user_tariff.sh` can change client traffic.

### `update_company_tariff.sh` usages

```console
./update_company_tariff.sh 'Personal id' 'New traffic'
```

### `update_user_tariff.sh` usages

```console
./update_user_tariff.sh 'Person full name' 'Person address' 'New traffic'
```

Script `traffic_info.sh` log traffic from every client.

### `traffic_info.sh` usages

Date should be in format: yyyy-mm-dd

Time should be in format: HH:MM:SS

```console
./traffic_info.sh traffic_info.sh 'Date of traffic begin' 'Time of traffic begin' 'Date of traffic end' 'Date of time end' 'How much MB was used' 'Who spend it'
```
