# Page Rules for a Zone

A rule describing target patterns for requests and actions to perform on matching requests

## List Page Rules

`GET` 

> GET zones/:zone_identifier/pagerules

**Permission needed:** `#zone:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create Page Rule

`POST` 

> POST zones/:zone_identifier/pagerules

**Permission needed:** `#zone:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Page Rule Details

`GET` 

> GET zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Update Page Rule

`PUT` Replace a page rule. The final rule will exactly match the data passed with this request.

> PUT zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Edit Page Rule

`PATCH` 

> PATCH zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete Page Rule

`DELETE` 

> DELETE zones/:zone_identifier/pagerules/:identifier

**Permission needed:** `#zone:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

