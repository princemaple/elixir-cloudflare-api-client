# Logpush jobs for an account

## List fields

**GET** `/accounts/{account_id}/logpush/datasets/{dataset_id}/fields`

Lists all fields available for a dataset. The response result is. an object with key-value pairs, where keys are field names, and values are descriptions.


## List Logpush jobs for a dataset

**GET** `/accounts/{account_id}/logpush/datasets/{dataset_id}/jobs`

Lists Logpush jobs for an account for a dataset.


## Create Logpush job

**POST** `/accounts/{account_id}/logpush/jobs`

Creates a new Logpush job for an account.


## List Logpush jobs

**GET** `/accounts/{account_id}/logpush/jobs`

Lists Logpush jobs for an account.


## Update Logpush job

**PUT** `/accounts/{account_id}/logpush/jobs/{job_id}`

Updates a Logpush job.


## Get Logpush job details

**GET** `/accounts/{account_id}/logpush/jobs/{job_id}`

Gets the details of a Logpush job.


## Delete Logpush job

**DELETE** `/accounts/{account_id}/logpush/jobs/{job_id}`

Deletes a Logpush job.


## Get ownership challenge

**POST** `/accounts/{account_id}/logpush/ownership`

Gets a new ownership challenge sent to your destination.


## Validate ownership challenge

**POST** `/accounts/{account_id}/logpush/ownership/validate`

Validates ownership challenge of the destination.


## Validate destination

**POST** `/accounts/{account_id}/logpush/validate/destination`

Validates destination.


## Check destination exists

**POST** `/accounts/{account_id}/logpush/validate/destination/exists`

Checks if there is an existing job with a destination.


## Validate origin

**POST** `/accounts/{account_id}/logpush/validate/origin`

Validates logpull origin with logpull_options.

