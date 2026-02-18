# Table Maintenance Configuration

## Update table maintenance configuration

**POST** `/accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables/{table_name}/maintenance-configs`

Update the maintenance configuration for a specific table. This allows you to
enable or disable compaction and adjust target file sizes for optimization.



## Get table maintenance configuration

**GET** `/accounts/{account_id}/r2-catalog/{bucket_name}/namespaces/{namespace}/tables/{table_name}/maintenance-configs`

Retrieve the maintenance configuration for a specific table,
including compaction settings.


