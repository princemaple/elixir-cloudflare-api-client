# Zero Trust lists

## Create Zero Trust list

**POST** `/accounts/{account_id}/gateway/lists`

Creates a new Zero Trust list.


## List Zero Trust lists

**GET** `/accounts/{account_id}/gateway/lists`

Fetch all Zero Trust lists for an account.


## Update Zero Trust list

**PUT** `/accounts/{account_id}/gateway/lists/{list_id}`

Updates a configured Zero Trust list. Skips updating list items if not included in the payload. A non empty list items will overwrite the existing list.


## Patch Zero Trust list.

**PATCH** `/accounts/{account_id}/gateway/lists/{list_id}`

Appends or removes an item from a configured Zero Trust list.


## Get Zero Trust list details

**GET** `/accounts/{account_id}/gateway/lists/{list_id}`

Fetch a single Zero Trust list.


## Delete Zero Trust list

**DELETE** `/accounts/{account_id}/gateway/lists/{list_id}`

Deletes a Zero Trust list.


## Get Zero Trust list items

**GET** `/accounts/{account_id}/gateway/lists/{list_id}/items`

Fetch all items in a single Zero Trust list.

