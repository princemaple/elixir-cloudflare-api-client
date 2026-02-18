# IP Address Management Prefixes

## Upload LOA Document

**POST** `/accounts/{account_id}/addressing/loa_documents`

Submit LOA document (pdf format) under the account.


## Download LOA Document

**GET** `/accounts/{account_id}/addressing/loa_documents/{loa_document_id}/download`

Download specified LOA document under the account.


## Add Prefix

**POST** `/accounts/{account_id}/addressing/prefixes`

Add a new prefix under the account.


## List Prefixes

**GET** `/accounts/{account_id}/addressing/prefixes`

List all prefixes owned by the account.


## Update Prefix Description

**PATCH** `/accounts/{account_id}/addressing/prefixes/{prefix_id}`

Modify the description for a prefix owned by the account.


## Prefix Details

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}`

List a particular prefix owned by the account.


## Delete Prefix

**DELETE** `/accounts/{account_id}/addressing/prefixes/{prefix_id}`

Delete an unapproved prefix owned by the account.


## Validate Prefix

**POST** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/validate`

Triggers a new prefix validation. The checks are run asynchronously and include IRR, RPKI, and prefix ownership.

