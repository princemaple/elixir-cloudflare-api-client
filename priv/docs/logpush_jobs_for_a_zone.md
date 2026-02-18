# Logpush jobs for a zone

## List fields

**GET** `/zones/{zone_id}/logpush/datasets/{dataset_id}/fields`

Lists all fields available for a dataset. The response result is. an object with key-value pairs, where keys are field names, and values are descriptions.


## List Logpush jobs for a dataset

**GET** `/zones/{zone_id}/logpush/datasets/{dataset_id}/jobs`

Lists Logpush jobs for a zone for a dataset.


## Create Logpush job

**POST** `/zones/{zone_id}/logpush/jobs`

Creates a new Logpush job for a zone.


## List Logpush jobs

**GET** `/zones/{zone_id}/logpush/jobs`

Lists Logpush jobs for a zone.


## Update Logpush job

**PUT** `/zones/{zone_id}/logpush/jobs/{job_id}`

Updates a Logpush job.


## Get Logpush job details

**GET** `/zones/{zone_id}/logpush/jobs/{job_id}`

Gets the details of a Logpush job.


## Delete Logpush job

**DELETE** `/zones/{zone_id}/logpush/jobs/{job_id}`

Deletes a Logpush job.


## Get ownership challenge

**POST** `/zones/{zone_id}/logpush/ownership`

Gets a new ownership challenge sent to your destination.


## Validate ownership challenge

**POST** `/zones/{zone_id}/logpush/ownership/validate`

Validates ownership challenge of the destination.


## Validate destination

**POST** `/zones/{zone_id}/logpush/validate/destination`

Validates destination.


## Check destination exists

**POST** `/zones/{zone_id}/logpush/validate/destination/exists`

Checks if there is an existing job with a destination.


## Validate origin

**POST** `/zones/{zone_id}/logpush/validate/origin`

Validates logpull origin with logpull_options.

