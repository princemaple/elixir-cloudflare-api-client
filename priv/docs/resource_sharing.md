# Resource Sharing

## Create a new share

**POST** `/accounts/{account_id}/shares`




## List account shares

**GET** `/accounts/{account_id}/shares`

Lists all account shares.


## Update a share

**PUT** `/accounts/{account_id}/shares/{share_id}`

Updating is not immediate, an updated share object with a new status will be returned.


## Get account share by ID

**GET** `/accounts/{account_id}/shares/{share_id}`

Fetches share by ID.


## Delete a share

**DELETE** `/accounts/{account_id}/shares/{share_id}`

Deletion is not immediate, an updated share object with a new status will be returned.


## Update a share's recipients

**PUT** `/accounts/{account_id}/shares/{share_id}/recipients`

Changes a share's recipients to match the given list. Returns an error if the share targets an organization.


## Create a new share recipient

**POST** `/accounts/{account_id}/shares/{share_id}/recipients`




## List share recipients by share ID

**GET** `/accounts/{account_id}/shares/{share_id}/recipients`

List share recipients by share ID.


## Get share recipient by ID

**GET** `/accounts/{account_id}/shares/{share_id}/recipients/{recipient_id}`

Get share recipient by ID.


## Delete a share recipient

**DELETE** `/accounts/{account_id}/shares/{share_id}/recipients/{recipient_id}`

Deletion is not immediate, an updated share recipient object with a new status will be returned.


## Create a new share resource

**POST** `/accounts/{account_id}/shares/{share_id}/resources`




## List share resources by share ID

**GET** `/accounts/{account_id}/shares/{share_id}/resources`

List share resources by share ID.


## Update a share resource

**PUT** `/accounts/{account_id}/shares/{share_id}/resources/{resource_id}`

Update is not immediate, an updated share resource object with a new status will be returned.


## Get share resource by ID

**GET** `/accounts/{account_id}/shares/{share_id}/resources/{resource_id}`

Get share resource by ID.


## Delete a share resource

**DELETE** `/accounts/{account_id}/shares/{share_id}/resources/{resource_id}`

Deletion is not immediate, an updated share resource object with a new status will be returned.


## List organization shares

**GET** `/organizations/{organization_id}/shares`

Lists all organization shares.

