# Custom Indicator Feeds

## Create new indicator feed

**POST** `/accounts/{account_id}/intel/indicator-feeds`




## Get indicator feeds owned by this account

**GET** `/accounts/{account_id}/intel/indicator-feeds`




## Grant permission to indicator feed

**PUT** `/accounts/{account_id}/intel/indicator-feeds/permissions/add`




## Revoke permission to indicator feed

**PUT** `/accounts/{account_id}/intel/indicator-feeds/permissions/remove`




## List indicator feed permissions

**GET** `/accounts/{account_id}/intel/indicator-feeds/permissions/view`




## Update indicator feed metadata

**PUT** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}`




## Get indicator feed metadata

**GET** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}`




## Get indicator feed data

**GET** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}/data`




## Download indicator feed data

**GET** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}/download`




## Update indicator feed data

**PUT** `/accounts/{account_id}/intel/indicator-feeds/{feed_id}/snapshot`



