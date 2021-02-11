## List Logpush Jobs

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`GET` List Logpush Jobs for a zone

> GET zones/:zone_identifier/logpush/jobs


## List Logpush Jobs for a dataset

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`GET` List Logpush Jobs for a zone for a dataset

> GET zones/:zone_identifier/logpush/datasets/:dataset/jobs


## Fields

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`GET` The list of all fields available for a dataset. The response result is an object with key-value pairs where keys are field names, and values are descriptions.

> GET zones/:zone_identifier/logpush/datasets/:dataset/fields


## Get Ownership Challenge

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`POST` Get a new ownership challenge sent to your destination

> POST zones/:zone_identifier/logpush/ownership


## Validate Ownership Challenge

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`POST` Validate ownership challenge of the destination

> POST zones/:zone_identifier/logpush/ownership/validate


## Validate Origin

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`POST` Validate logpull origin with logpull_options

> POST zones/:zone_identifier/logpush/validate/origin


## Create Logpush Job

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`POST` Create a new Logpush Job for a zone

> POST zones/:zone_identifier/logpush/jobs


## Logpush Job Details

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`GET` Get the details of a Logpush Job

> GET zones/:zone_identifier/logpush/jobs/:job_identifier


## Update Logpush Job

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`PUT` Update a Logpush Job

> PUT zones/:zone_identifier/logpush/jobs/:job_identifier


## Delete Logpush Job

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`DELETE` Delete a Logpush Job

> DELETE zones/:zone_identifier/logpush/jobs/:job_identifier


## Check Destination Exists

**Permission needed:** `#logs:edit`

Available in:

* enterprise

`POST` Check if there is an existing job with a destination

> POST zones/:zone_identifier/logpush/validate/destination/exists
