# Zone-Level Access Short-Lived Certificates

Short-lived certificates improve access security to infrastructure with ephemeral certificates. Serves as a replacement to traditional SSH key models. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-short-lived-certificates-properties.)

## List Short-Lived Certificates

`GET` List Short-Lived Certificates

> GET zones/:identifier/access/apps/ca

**Permission needed:** `None`

Available in:




## Short-Lived Certificate Details

`GET` Fetch a single short-lived certificate

> GET zones/:identifier/access/apps/:uuid/ca

**Permission needed:** `None`

Available in:




## Create Short-Lived Certificate

`POST` Create a new short-lived certificate

> POST zones/:identifier/access/apps/:uuid/ca

**Permission needed:** `None`

Available in:




## Delete Access Certificate

`DELETE` Delete an Access Certificate

> DELETE zones/:identifier/access/apps/:uuid/ca

**Permission needed:** `None`

Available in:



