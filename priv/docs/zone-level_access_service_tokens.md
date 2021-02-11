# Zone-Level Access Service Tokens

Access Service Tokens allow automated requests to reach protected domains. (NOTE: it's recommended that the account route namespace is used instead: https://api.cloudflare.com/#access-service-tokens-properties.)

## List Access Service Tokens

`GET` List Access Service Tokens

> GET zones/:identifier/access/service_tokens

**Permission needed:** `None`

Available in:




## Create Access Service Token

`POST` Create a new Access Service Token. Note: This is the only time you can get the client secret. Please save it somewhere secure.

> POST zones/:identifier/access/service_tokens

**Permission needed:** `None`

Available in:




## Update Access Service Token

`PUT` Update a configured Access Service Token

> PUT zones/:identifier/access/service_tokens/:uuid

**Permission needed:** `None`

Available in:




## Delete Access Service Token

`DELETE` Delete an Access Service Token

> DELETE zones/:identifier/access/service_tokens/:uuid

**Permission needed:** `None`

Available in:



