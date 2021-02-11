## Page Rules for a Zone

A rule describing target patterns for requests and actions to perform on matching requests

### List Page Rules

**Permission needed:** `#zone:read`

Available in:

* free
* pro
* business
* enterprise

`GET` 

> GET zones/:zone_identifier/pagerules


### Create Page Rule

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` 

> POST zones/:zone_identifier/pagerules


### Page Rule Details

**Permission needed:** `#zone:read`

Available in:

* free
* pro
* business
* enterprise

`GET` 

> GET zones/:zone_identifier/pagerules/:identifier


### Update Page Rule

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

`PUT` Replace a page rule. The final rule will exactly match the data passed with this request.

> PUT zones/:zone_identifier/pagerules/:identifier


### Edit Page Rule

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

`PATCH` 

> PATCH zones/:zone_identifier/pagerules/:identifier


### Delete Page Rule

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

`DELETE` 

> DELETE zones/:zone_identifier/pagerules/:identifier

