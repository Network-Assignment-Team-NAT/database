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

```console
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
