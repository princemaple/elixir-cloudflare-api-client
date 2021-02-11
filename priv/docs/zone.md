# Zone

A Zone is a domain name along with its subdomains and other identities

## List Zones

`GET` List, search, sort, and filter your zones

> GET zones

**Permission needed:** `#zone:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Create Zone

`POST` 

> POST zones

**Permission needed:** `#zone:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Zone Details

`GET` 

> GET zones/:identifier

**Permission needed:** `#zone:read`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Edit Zone

`PATCH` Only one zone property can be changed at a time

> PATCH zones/:identifier

**Permission needed:** `None`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Delete Zone

`DELETE` Delete an existing zone.

> DELETE zones/:identifier

**Permission needed:** `#zone:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Zone Activation Check

`PUT` Initiate another zone activation check

> PUT zones/:identifier/activation_check

**Permission needed:** `#zone:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Purge All Files

`POST` Remove ALL files from Cloudflare's cache

> POST zones/:identifier/purge_cache

**Permission needed:** `#cache_purge:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE


## Purge Files by URL

`POST` Granularly remove one or more files from Cloudflare's cache either by specifying URLs. All tiers can purge by URL.To purge files with custom cache keys, include the headers used to compute the cache key as in the example. To purge files with ${geo} or ${devicetype} in their cache keys, include the CF-Device-Type or CF-IPCountry headers.NB: When including the Origin header, be sure to include the scheme and hostname. The port number can be omitted if it is the default port (80 for http, 443 for https), but must be included otherwise.

> POST zones/:identifier/purge_cache

**Permission needed:** `#cache_purge:edit`

Available in:

* FREE
* PRO
* BUSINESS
* ENTERPRISE

