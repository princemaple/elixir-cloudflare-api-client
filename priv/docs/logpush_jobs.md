# Logpush Jobs

Logpush jobs

## List Logpush Jobs

`GET` List Logpush Jobs for a zone

> GET zones/:zone_identifier/logpush/jobs

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## List Logpush Jobs for a dataset

`GET` List Logpush Jobs for a zone for a dataset

> GET zones/:zone_identifier/logpush/datasets/:dataset/jobs

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Fields

`GET` The list of all fields available for a dataset. The response result is an object with key-value pairs where keys are field names, and values are descriptions.

> GET zones/:zone_identifier/logpush/datasets/:dataset/fields

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Get Ownership Challenge

`POST` Get a new ownership challenge sent to your destination

> POST zones/:zone_identifier/logpush/ownership

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Validate Ownership Challenge

`POST` Validate ownership challenge of the destination

> POST zones/:zone_identifier/logpush/ownership/validate

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Validate Origin

`POST` Validate logpull origin with logpull_options

> POST zones/:zone_identifier/logpush/validate/origin

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Create Logpush Job

`POST` Create a new Logpush Job for a zone

> POST zones/:zone_identifier/logpush/jobs

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Logpush Job Details

`GET` Get the details of a Logpush Job

> GET zones/:zone_identifier/logpush/jobs/:job_identifier

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Update Logpush Job

`PUT` Update a Logpush Job

> PUT zones/:zone_identifier/logpush/jobs/:job_identifier

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Delete Logpush Job

`DELETE` Delete a Logpush Job

> DELETE zones/:zone_identifier/logpush/jobs/:job_identifier

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE


## Check Destination Exists

`POST` Check if there is an existing job with a destination

> POST zones/:zone_identifier/logpush/validate/destination/exists

**Permission needed:** `#logs:edit`

Available in:

* ENTERPRISE

