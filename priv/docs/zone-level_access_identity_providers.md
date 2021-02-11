## Zone-Level Access Identity Providers

Access identity providers are the services your user’s will login against to authenticate with your site. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-identity-providers-properties.)

### List Access Identity Providers

**Permission needed:** `None`

Available in:



`GET` List your Access Identity Providers

> GET zones/:identifier/access/identity_providers


### Access Identity Providers Details

**Permission needed:** `None`

Available in:



`GET` Fetch your Access Identity Providers details

> GET zones/:identifier/access/identity_providers/:uuid


### Create Access Identity Provider

**Permission needed:** `None`

Available in:



`POST` Create a new Access Identity Provider

> POST zones/:identifier/access/identity_providers


### Update Access Identity Provider

**Permission needed:** `None`

Available in:



`PUT` Update a configured Access Identity Provider

> PUT zones/:identifier/access/identity_providers/:uuid


### Delete Access Identity Provider

**Permission needed:** `None`

Available in:



`DELETE` Delete an Access Identity Provider

> DELETE zones/:identifier/access/identity_providers/:uuid

