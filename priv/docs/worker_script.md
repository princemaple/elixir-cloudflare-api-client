## Worker Script

A Worker script is a single script that is executed on matching routes in the Cloudflare edge

### Upload Worker

**Permission needed:** `com.cloudflare.edge.worker.script.create`

Available in:



`PUT` Upload a worker, or a new version of a worker.

> PUT accounts/:account_identifier/workers/scripts/:script_name


### List Workers

**Permission needed:** `com.cloudflare.edge.worker.script.list`

Available in:



`GET` Fetch a list of uploaded workers.

> GET accounts/:account_identifier/workers/scripts


### Download Worker

**Permission needed:** `com.cloudflare.edge.worker.script.read`

Available in:



`GET` Fetch raw script content for your worker. Note this is the original script content, not JSON encoded.

> GET accounts/:account_identifier/workers/scripts/:script_name


### Delete Worker

**Permission needed:** `com.cloudflare.edge.worker.script.delete`

Available in:



`DELETE` Delete your worker. This call has no response body on a successful delete.

> DELETE accounts/:account_identifier/workers/scripts/:script_name

