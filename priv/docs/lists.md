# Lists

## Create a list

**POST** `/accounts/{account_id}/rules/lists`

Creates a new list of the specified kind.


## Get lists

**GET** `/accounts/{account_id}/rules/lists`

Fetches all lists in the account.


## Get bulk operation status

**GET** `/accounts/{account_id}/rules/lists/bulk_operations/{operation_id}`

Gets the current status of an asynchronous operation on a list.

The `status` property can have one of the following values: `pending`, `running`, `completed`, or `failed`. If the status is `failed`, the `error` property will contain a message describing the error.


## Update a list

**PUT** `/accounts/{account_id}/rules/lists/{list_id}`

Updates the description of a list.


## Get a list

**GET** `/accounts/{account_id}/rules/lists/{list_id}`

Fetches the details of a list.


## Delete a list

**DELETE** `/accounts/{account_id}/rules/lists/{list_id}`

Deletes a specific list and all its items.


## Update all list items

**PUT** `/accounts/{account_id}/rules/lists/{list_id}/items`

Removes all existing items from the list and adds the provided items to the list.

This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.

There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.


## Create list items

**POST** `/accounts/{account_id}/rules/lists/{list_id}/items`

Appends new items to the list.

This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.

There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.


## Get list items

**GET** `/accounts/{account_id}/rules/lists/{list_id}/items`

Fetches all the items in the list.


## Delete list items

**DELETE** `/accounts/{account_id}/rules/lists/{list_id}/items`

Removes one or more items from a list.

This operation is asynchronous. To get current the operation status, invoke the `Get bulk operation status` endpoint with the returned `operation_id`.

There is a limit of 1 pending bulk operation per account. If an outstanding bulk operation is in progress, the request will be rejected.


## Get a list item

**GET** `/accounts/{account_id}/rules/lists/{list_id}/items/{item_id}`

Fetches a list item in the list.

