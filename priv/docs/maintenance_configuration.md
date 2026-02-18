# Maintenance Configuration

## Update catalog maintenance configuration

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/maintenance-configs`

Update the maintenance configuration for a catalog. This allows you to
enable or disable compaction and adjust target file sizes for optimization.



## Get catalog maintenance configuration

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}/maintenance-configs`

Retrieve the maintenance configuration for a specific catalog,
including compaction settings and credential status.


