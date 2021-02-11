# Rules Lists

Lists of IPs and CIDRs

## List Lists

`GET` List all Lists for the account

> GET accounts/:account_identifier/rules/lists

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create List

`POST` Create a new list

> POST accounts/:account_identifier/rules/lists

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Get List

`GET` Get the List

> GET accounts/:account_identifier/rules/lists/:list_id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Update List

`PUT` Update the list description

> PUT accounts/:account_identifier/rules/lists/:list_id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete List

`DELETE` Delete the list

> DELETE accounts/:account_identifier/rules/lists/:list_id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## List List Items

`GET` List all items in the List

> GET accounts/:account_identifier/rules/lists/:list_id/items

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create List Items

`POST` Append new items to the List.This endpoint is asynchronous. The result is available by polling the Get Bulk Operation endpoint with the returned operation_id.

> POST accounts/:account_identifier/rules/lists/:list_id/items

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Replace List Items

`PUT` Remove all current list items and append the given items to the List.This endpoint is asynchronous. The result is available by polling the Get Bulk Operation endpoint with the returned operation_id.

> PUT accounts/:account_identifier/rules/lists/:list_id/items

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete List Items

`DELETE` Delete one or more items in a List.This endpoint is asynchronous. The result is available by polling the Get Bulk Operation endpoint with the returned operation_id.

> DELETE accounts/:account_identifier/rules/lists/:list_id/items

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Get List Item

`GET` Get an item in the List

> GET accounts/:account_identifier/rules/lists/:list_id/items/:item_id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Get Bulk Operation

`GET` Get the current status of a Lists asynchronous operation.If the operation has failed then an error message will be available in the response.

> GET accounts/:account_identifier/rules/lists/bulk_operations/:operation_id

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

