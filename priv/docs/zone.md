## List Zones

**Permission needed:** `#zone:read`

Available in:

* free
* pro
* business
* enterprise

`GET` List, search, sort, and filter your zones

> GET zones


## Create Zone

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` 

> POST zones


## Zone Details

**Permission needed:** `#zone:read`

Available in:

* free
* pro
* business
* enterprise

`GET` 

> GET zones/:identifier


## Edit Zone

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`PATCH` Only one zone property can be changed at a time

> PATCH zones/:identifier


## Delete Zone

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Delete an existing zone.

> DELETE zones/:identifier


## Zone Activation Check

**Permission needed:** `#zone:edit`

Available in:

* free
* pro
* business
* enterprise

`PUT` Initiate another zone activation check

> PUT zones/:identifier/activation_check


## Purge All Files

**Permission needed:** `#cache_purge:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` Remove ALL files from Cloudflare's cache

> POST zones/:identifier/purge_cache


## Purge Files by URL

**Permission needed:** `#cache_purge:edit`

Available in:

* free
* pro
* business
* enterprise

`POST` Granularly remove one or more files from Cloudflare's cache either by specifying URLs. All tiers can purge by URL.To purge files with custom cache keys, include the headers used to compute the cache key as in the example. To purge files with ${geo} or ${devicetype} in their cache keys, include the CF-Device-Type or CF-IPCountry headers.NB: When including the Origin header, be sure to include the scheme and hostname. The port number can be omitted if it is the default port (80 for http, 443 for https), but must be included otherwise.

> POST zones/:identifier/purge_cache
