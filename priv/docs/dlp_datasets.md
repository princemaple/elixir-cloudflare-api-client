# DLP Datasets

## Create a new dataset

**POST** `/accounts/{account_id}/dlp/datasets`




## Fetch all datasets

**GET** `/accounts/{account_id}/dlp/datasets`




## Update details about a dataset

**PUT** `/accounts/{account_id}/dlp/datasets/{dataset_id}`




## Fetch a specific dataset

**GET** `/accounts/{account_id}/dlp/datasets/{dataset_id}`




## Delete a dataset

**DELETE** `/accounts/{account_id}/dlp/datasets/{dataset_id}`

This deletes all versions of the dataset.


## Prepare to upload a new version of a dataset

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/upload`




## Upload a new version of a dataset

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/upload/{version}`

This is used for single-column EDMv1 and Custom Word Lists. The EDM format
can only be created in the Cloudflare dashboard. For other clients, this
operation can only be used for non-secret Custom Word Lists. The body must
be a UTF-8 encoded, newline (NL or CRNL) separated list of words to be matched.


## Sets the column information for a multi-column upload

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/versions/{version}`

This is used for multi-column EDMv2 datasets. The EDMv2 format can only be
created in the Cloudflare dashboard. The columns in the response appear in
the same order as in the request.


## Upload a new version of a multi-column dataset

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/versions/{version}/entries/{entry_id}`

This is used for multi-column EDMv2 datasets. The EDMv2 format can only be
created in the Cloudflare dashboard.

