# Indicator

## Lists indicators

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators`

Retrieves a paginated list of indicators for the account.


## Creates multiple indicators in bulk

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/bulk`

Creates multiple indicators at once with their respective types and related datasets.


## Creates a new indicator

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/create`

Creates a new indicator with the specified type and related datasets.


## List mirrored tags for an indicator dataset

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/tags`

Returns all mirrored tags from the indicator dataset (DO mirror table). No pagination.


## Updates an indicator

**PATCH** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`

Updates an existing indicator's properties.


## Reads an indicator

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`

Retrieves a specific indicator by its UUID.


## Deletes an indicator

**DELETE** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`

Deletes a specific indicator by its UUID.


## Lists indicators across multiple datasets

**GET** `/accounts/{account_id}/cloudforce-one/events/indicators`

Retrieves a paginated list of indicators across specified datasets. Use datasetIds=all or datasetIds=* to query all datasets for the account. If no datasetIds provided, uses the default dataset.

