## Worker Script (Deprecated)

A Worker script is a single script that is executed on matching filters in the Cloudflare edge

### Download Worker

**Permission needed:** `None`

Available in:



`GET` Fetch raw script content for your worker. Note this is the original script content, not JSON encoded.

> GET zones/:zone_identifier/workers/script


### Delete Worker

**Permission needed:** `None`

Available in:



`DELETE` Delete your worker. This call has no response body on a successful delete.

> DELETE zones/:zone_identifier/workers/script


### Upload Worker

**Permission needed:** `None`

Available in:



`PUT` Upload a worker, or a new version of a worker.

> PUT zones/:zone_identifier/workers/script

