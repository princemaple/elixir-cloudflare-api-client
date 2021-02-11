## Custom Pages for a Zone

Custom pages associated with a zone

### List Available Custom Pages

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise

`GET` A list of available Custom Pages the zone can use

> GET zones/:zone_identifier/custom_pages


### Custom Page Details

**Permission needed:** `#zone_settings:read`

Available in:

* pro
* business
* enterprise

`GET` Details about a specific Custom page details

> GET zones/:zone_identifier/custom_pages/:identifier


### Update Custom Page URL

**Permission needed:** `#zone_settings:edit`

Available in:

* pro
* business
* enterprise

`PUT` Update custom page URL

> PUT zones/:zone_identifier/custom_pages/:identifier

