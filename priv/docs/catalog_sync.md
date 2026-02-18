# Catalog Sync

## Create Catalog Sync

**POST** `/accounts/{account_id}/magic/cloud/catalog-syncs`

Create a new Catalog Sync (Closed Beta).


## List Catalog Syncs

**GET** `/accounts/{account_id}/magic/cloud/catalog-syncs`

List Catalog Syncs (Closed Beta).


## List Prebuilt Policies

**GET** `/accounts/{account_id}/magic/cloud/catalog-syncs/prebuilt-policies`

List prebuilt catalog sync policies (Closed Beta).


## Update Catalog Sync

**PUT** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Update a Catalog Sync (Closed Beta).


## Patch Catalog Sync

**PATCH** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Update a Catalog Sync (Closed Beta).


## Read Catalog Sync

**GET** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Read a Catalog Sync (Closed Beta).


## Delete Catalog Sync

**DELETE** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`

Delete a Catalog Sync (Closed Beta).


## Run Catalog Sync

**POST** `/accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}/refresh`

Refresh a Catalog Sync's destination by running the sync policy against latest resource catalog (Closed Beta).

