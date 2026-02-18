# R2 Bucket

## List Event Notification Rules

**GET** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration`

List all event notification rules for a bucket.


## Create Event Notification Rule

**PUT** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`

Create event notification rule.


## Get Event Notification Rule

**GET** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`

Get a single event notification rule.


## Delete Event Notification Rules

**DELETE** `/accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`

Delete an event notification rule. **If no body is provided, all rules for specified queue will be deleted**.


## Create Bucket

**POST** `/accounts/{account_id}/r2/buckets`

Creates a new R2 bucket.


## List Buckets

**GET** `/accounts/{account_id}/r2/buckets`

Lists all R2 buckets on your account.


## Patch Bucket

**PATCH** `/accounts/{account_id}/r2/buckets/{bucket_name}`

Updates properties of an existing R2 bucket.


## Get Bucket

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}`

Gets properties of an existing R2 bucket.


## Delete Bucket

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}`

Deletes an existing R2 bucket.


## Put Bucket CORS Policy

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/cors`

Set the CORS policy for a bucket.


## Get Bucket CORS Policy

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/cors`

Get the CORS policy for a bucket.


## Delete Bucket CORS Policy

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}/cors`

Delete the CORS policy for a bucket.


## Attach Custom Domain To Bucket

**POST** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom`

Register a new custom domain for an existing R2 bucket.


## List Custom Domains of Bucket

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom`

Gets a list of all custom domains registered with an existing R2 bucket.


## Configure Custom Domain Settings

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`

Edit the configuration for a custom domain on an existing R2 bucket.


## Get Custom Domain Settings

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`

Get the configuration for a custom domain on an existing R2 bucket.


## Remove Custom Domain From Bucket

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`

Remove custom domain registration from an existing R2 bucket.


## Update r2.dev Domain of Bucket

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/managed`

Updates state of public access over the bucket's R2-managed (r2.dev) domain.


## Get r2.dev Domain of Bucket

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/domains/managed`

Gets state of public access over the bucket's R2-managed (r2.dev) domain.


## Put Object Lifecycle Rules

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/lifecycle`

Set the object lifecycle rules for a bucket.


## Get Object Lifecycle Rules

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/lifecycle`

Get object lifecycle rules for a bucket.


## Put Local Uploads Configuration

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/local-uploads`

Set the local uploads configuration for a bucket. When enabled, object's data is written to the nearest region first, then asynchronously replicated to the bucket's primary region.


## Get Local Uploads Configuration

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/local-uploads`

Get the local uploads configuration for a bucket. When enabled, object's data is written to the nearest region first, then asynchronously replicated to the bucket's primary region.


## Put Bucket Lock Rules

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/lock`

Set lock rules for a bucket.


## Get Bucket Lock Rules

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/lock`

Get lock rules for a bucket.


## Enable Sippy

**PUT** `/accounts/{account_id}/r2/buckets/{bucket_name}/sippy`

Sets configuration for Sippy for an existing R2 bucket.


## Get Sippy Configuration

**GET** `/accounts/{account_id}/r2/buckets/{bucket_name}/sippy`

Gets configuration for Sippy for an existing R2 bucket.


## Disable Sippy

**DELETE** `/accounts/{account_id}/r2/buckets/{bucket_name}/sippy`

Disables Sippy on this bucket.


## Create Temporary Access Credentials

**POST** `/accounts/{account_id}/r2/temp-access-credentials`

Creates temporary access credentials on a bucket that can be optionally scoped to prefixes or objects.

