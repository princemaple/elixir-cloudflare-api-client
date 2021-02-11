# Worker Script (Deprecated)

A Worker script is a single script that is executed on matching filters in the Cloudflare edge

## Download Worker

`GET` Fetch raw script content for your worker. Note this is the original script content, not JSON encoded.

> GET zones/:zone_identifier/workers/script

**Permission needed:** `None`

Available in:




## Delete Worker

`DELETE` Delete your worker. This call has no response body on a successful delete.

> DELETE zones/:zone_identifier/workers/script

**Permission needed:** `None`

Available in:




## Upload Worker

`PUT` Upload a worker, or a new version of a worker.

> PUT zones/:zone_identifier/workers/script

**Permission needed:** `None`

Available in:



