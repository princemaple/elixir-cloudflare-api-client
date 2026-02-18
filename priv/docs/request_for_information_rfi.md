# Request for Information (RFI)

## List Requests

**POST** `/accounts/{account_id}/cloudforce-one/requests`




## Get Request Priority, Status, and TLP constants

**GET** `/accounts/{account_id}/cloudforce-one/requests/constants`




## Create a New Request.

**POST** `/accounts/{account_id}/cloudforce-one/requests/new`

Creating a request adds the request into the Cloudforce One queue for analysis. In addition to the content, a short title, type, priority, and releasability should be provided. If one is not provided, a default will be assigned.


## Get Request Quota

**GET** `/accounts/{account_id}/cloudforce-one/requests/quota`




## Get Request Types

**GET** `/accounts/{account_id}/cloudforce-one/requests/types`




## Update a Request

**PUT** `/accounts/{account_id}/cloudforce-one/requests/{request_id}`

Updating a request alters the request in the Cloudforce One queue. This API may be used to update any attributes of the request after the initial submission. Only fields that you choose to update need to be add to the request body.


## Get a Request

**GET** `/accounts/{account_id}/cloudforce-one/requests/{request_id}`




## Delete a Request

**DELETE** `/accounts/{account_id}/cloudforce-one/requests/{request_id}`




## List Request Assets

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset`




## Create a New Request Asset

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/new`




## Update a Request Asset

**PUT** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`




## Get a Request Asset

**GET** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`




## Delete a Request Asset

**DELETE** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/asset/{asset_id}`




## List Request Messages

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message`




## Create a New Request Message

**POST** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message/new`




## Update a Request Message

**PUT** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`




## Delete a Request Message

**DELETE** `/accounts/{account_id}/cloudforce-one/requests/{request_id}/message/{message_id}`



