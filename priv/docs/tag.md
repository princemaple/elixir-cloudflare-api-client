# Tag

## List indicators related to a tag

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/tags/{tag_uuid}/indicators`

Returns indicators associated with the provided tag UUID across all indicator datasets, with pagination.


## Lists all tags (SoT)

**GET** `/accounts/{account_id}/cloudforce-one/events/tags`

Returns all Source-of-Truth tags for an account.


## Creates a new tag

**POST** `/accounts/{account_id}/cloudforce-one/events/tags/create`

Creates a new tag to be used accross threat events.


## Updates a tag (SoT)

**PATCH** `/accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`

Updates a Source-of-Truth tag by UUID.


## Deletes a tag (SoT)

**DELETE** `/accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`

Deletes a Source-of-Truth tag by UUID.

