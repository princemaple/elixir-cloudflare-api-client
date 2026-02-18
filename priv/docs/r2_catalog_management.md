# R2 Catalog Management

## List R2 catalogs

**GET** `/accounts/{account_id}/r2-catalog`

Returns a list of R2 buckets that have been enabled as Apache Iceberg catalogs
for the specified account. Each catalog represents an R2 bucket configured
to store Iceberg metadata and data files.



## Get R2 catalog details

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}`

Retrieve detailed information about a specific R2 catalog by bucket name.
Returns catalog status, maintenance configuration, and credential status.



## Disable R2 catalog

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/disable`

Disable an R2 bucket as a catalog. This operation deactivates the catalog
but preserves existing metadata and data files. The catalog can be
re-enabled later.



## Enable R2 bucket as a catalog

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/enable`

Enable an R2 bucket as an Apache Iceberg catalog. This operation creates
the necessary catalog infrastructure and activates the bucket for storing
Iceberg metadata and data files.


