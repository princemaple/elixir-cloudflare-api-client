## Zone-Level Access Short-Lived Certificates

Short-lived certificates improve access security to infrastructure with ephemeral certificates. Serves as a replacement to traditional SSH key models. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-short-lived-certificates-properties.)

### List Short-Lived Certificates

**Permission needed:** `None`

Available in:



`GET` List Short-Lived Certificates

> GET zones/:identifier/access/apps/ca


### Short-Lived Certificate Details

**Permission needed:** `None`

Available in:



`GET` Fetch a single short-lived certificate

> GET zones/:identifier/access/apps/:uuid/ca


### Create Short-Lived Certificate

**Permission needed:** `None`

Available in:



`POST` Create a new short-lived certificate

> POST zones/:identifier/access/apps/:uuid/ca


### Delete Access Certificate

**Permission needed:** `None`

Available in:



`DELETE` Delete an Access Certificate

> DELETE zones/:identifier/access/apps/:uuid/ca

