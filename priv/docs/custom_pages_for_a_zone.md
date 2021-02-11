# Custom Pages for a Zone

Custom pages associated with a zone

## List Available Custom Pages

`GET` A list of available Custom Pages the zone can use

> GET zones/:zone_identifier/custom_pages

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise


## Custom Page Details

`GET` Details about a specific Custom page details

> GET zones/:zone_identifier/custom_pages/:identifier

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise


## Update Custom Page URL

`PUT` Update custom page URL

> PUT zones/:zone_identifier/custom_pages/:identifier

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

