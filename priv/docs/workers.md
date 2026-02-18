# Workers

## List builds by script

**GET** `/accounts/{account_id}/builds/workers/{external_script_id}/builds`

Get all builds for a specific worker script with pagination


## List triggers by script

**GET** `/accounts/{account_id}/builds/workers/{external_script_id}/triggers`

Get all triggers for a specific worker script


## Create Worker

**POST** `/accounts/{account_id}/workers/workers`

Create a new Worker.


## List Workers

**GET** `/accounts/{account_id}/workers/workers`

List all Workers for an account.


## Update Worker

**PUT** `/accounts/{account_id}/workers/workers/{worker_id}`

Perform a complete replacement of a Worker, where omitted properties are set to their default values. This is the exact same as the Create Worker endpoint, but operates on an existing Worker. To perform a partial update instead, use the Edit Worker endpoint.


## Edit Worker

**PATCH** `/accounts/{account_id}/workers/workers/{worker_id}`

Perform a partial update on a Worker, where omitted properties are left unchanged from their current values.


## Get Worker

**GET** `/accounts/{account_id}/workers/workers/{worker_id}`

Get details about a specific Worker.


## Delete Worker

**DELETE** `/accounts/{account_id}/workers/workers/{worker_id}`

Delete a Worker and all its associated resources (versions, deployments, etc.).

