## List Tokens

**Permission needed:** `com.cloudflare.api.token.list`

Available in:

* free
* pro
* business
* enterprise

`GET` List all access tokens you created

> GET user/tokens


## Create Token

**Permission needed:** `com.cloudflare.api.token.create`

Available in:

* free
* pro
* business
* enterprise

`POST` Create a new access token

> POST user/tokens


## Token Details

**Permission needed:** `com.cloudflare.api.token.read`

Available in:

* free
* pro
* business
* enterprise

`GET` Get information about a specific token

> GET user/tokens/:identifier


## Update Token

**Permission needed:** `com.cloudflare.api.token.update`

Available in:

* free
* pro
* business
* enterprise

`PUT` Update an existing token

> PUT user/tokens/:identifier


## Delete Token

**Permission needed:** `com.cloudflare.api.token.delete`

Available in:

* free
* pro
* business
* enterprise

`DELETE` Destroy a token

> DELETE user/tokens/:identifier


## Roll Token

**Permission needed:** `com.cloudflare.api.token.update`

Available in:

* free
* pro
* business
* enterprise

`PUT` Roll the token secret

> PUT user/tokens/:identifier/value


## Verify Token

**Permission needed:** `None`

Available in:

* free
* pro
* business
* enterprise

`GET` Test a token

> GET user/tokens/verify
