## List Lists

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` List all Lists for the account

> GET accounts/:account_identifier/rules/lists


## Create List

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`POST` Create a new list

> POST accounts/:account_identifier/rules/lists


## Get List

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Get the List

> GET accounts/:account_identifier/rules/lists/:list_id


## Update List

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update the list description

> PUT accounts/:account_identifier/rules/lists/:list_id


## Delete List

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Delete the list

> DELETE accounts/:account_identifier/rules/lists/:list_id


## List List Items

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` List all items in the List

> GET accounts/:account_identifier/rules/lists/:list_id/items


## Create List Items

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`POST` Append new items to the List.This endpoint is asynchronous. The result is available by polling the Get Bulk Operation endpoint with the returned operation_id.

> POST accounts/:account_identifier/rules/lists/:list_id/items


## Replace List Items

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`PUT` Remove all current list items and append the given items to the List.This endpoint is asynchronous. The result is available by polling the Get Bulk Operation endpoint with the returned operation_id.

> PUT accounts/:account_identifier/rules/lists/:list_id/items


## Delete List Items

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Delete one or more items in a List.This endpoint is asynchronous. The result is available by polling the Get Bulk Operation endpoint with the returned operation_id.

> DELETE accounts/:account_identifier/rules/lists/:list_id/items


## Get List Item

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Get an item in the List

> GET accounts/:account_identifier/rules/lists/:list_id/items/:item_id


## Get Bulk Operation

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Get the current status of a Lists asynchronous operation.If the operation has failed then an error message will be available in the response.

> GET accounts/:account_identifier/rules/lists/bulk_operations/:operation_id
