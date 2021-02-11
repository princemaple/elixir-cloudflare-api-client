# Page Rules for a Zone

A rule describing target patterns for requests and actions to perform on matching requests

## List Page Rules

`GET` 

> GET zones/:zone_identifier/pagerules

**Permission needed:** `#zone:read`

Available in:

* free
* pro
* business
* enterprise


## Create Page Rule

`POST` 

> POST zones/:zone_identifier/pagerules

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise


## Page Rule Details

`GET` 

> GET zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:read`

Available in:

* free
* pro
* business
* enterprise


## Update Page Rule

`PUT` Replace a page rule. The final rule will exactly match the data passed with this request.

> PUT zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise


## Edit Page Rule

`PATCH` 

> PATCH zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise


## Delete Page Rule

`DELETE` 

> DELETE zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

