## Workers KV Namespace

A Namespace is a collection of key-value pairs stored in Workers KV.

### List Namespaces

**Permission needed:** `com.cloudflare.edge.storage.kv.namespace.list`

Available in:



`GET` Returns the namespaces owned by an account

> GET accounts/:account_identifier/storage/kv/namespaces


### Create a Namespace

**Permission needed:** `com.cloudflare.edge.storage.kv.namespace.create`

Available in:



`POST` Creates a namespace under the given title. A 400 is returned if the account already owns a namespace with this title. A namespace must be explicitly deleted to be replaced.

> POST accounts/:account_identifier/storage/kv/namespaces


### Remove a Namespace

**Permission needed:** `com.cloudflare.edge.storage.kv.namespace.delete`

Available in:



`DELETE` Deletes the namespace corresponding to the given ID.

> DELETE accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier


### Rename a Namespace

**Permission needed:** `com.cloudflare.edge.storage.kv.namespace.delete`

Available in:



`PUT` Modifies a namespace's title.

> PUT accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier


### List a Namespace's Keys

**Permission needed:** `com.cloudflare.edge.storage.kv.key.list`

Available in:



`GET` Lists a namespace's keys.

> GET accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier/keys


### Read key-value pair

**Permission needed:** `com.cloudflare.edge.storage.kv.key.read`

Available in:



`GET` Returns the value associated with the given key in the given namespace. Use URL-encoding to use special characters (e.g. :, !, %) in the key name. If the KV-pair is set to expire at some point, the expiration time as measured in seconds since the UNIX epoch will be returned in the "Expiration" response header.

> GET accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier/values/:key_name


### Write key-value pair

**Permission needed:** `com.cloudflare.edge.storage.kv.key.update`

Available in:



`PUT` Write a value identified by a key. Use URL-encoding to use special characters (e.g. :, !, %) in the key name. Body should be the value to be stored. Existing values and expirations will be overwritten. If neither expiration nor expiration_ttl is specified, the key-value pair will never expire. If both are set, expiration_ttl is used and expiration is ignored.

> PUT accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier/values/:key_name?expiration=:expiration&expiration_ttl=:expiration_ttl


### Write key-value pair with metadata

**Permission needed:** `com.cloudflare.edge.storage.kv.key.update`

Available in:



`PUT` Write a value identified by a key. Use URL-encoding to use special characters (e.g. :, !, %) in the key name. Body should be the value to be stored along with json metadata to be associated with the key/value pair. Existing values, expirations and metadata will be overwritten. If neither expiration nor expiration_ttl is specified, the key-value pair will never expire. If both are set, expiration_ttl is used and expiration is ignored.

> PUT accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier/values/:key_name?expiration=:expiration&expiration_ttl=:expiration_ttl


### Write multiple key-value pairs

**Permission needed:** `com.cloudflare.edge.storage.kv.key.update`

Available in:



`PUT` Write multiple keys and values at once. Body should be an array of up to 10,000 key-value pairs to be stored, along with optional expiration information. Existing values and expirations will be overwritten. If neither expiration nor expiration_ttl is specified, the key-value pair will never expire. If both are set, expiration_ttl is used and expiration is ignored. The entire request size must be 100 megabytes or less.

> PUT accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier/bulk


### Delete key-value pair

**Permission needed:** `com.cloudflare.edge.storage.kv.key.delete`

Available in:



`DELETE` Remove a KV pair from the Namespace. Use URL-encoding to use special characters (e.g. :, !, %) in the key name.

> DELETE accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier/values/:key_name


### Delete multiple key-value pairs

**Permission needed:** `com.cloudflare.edge.storage.kv.key.delete`

Available in:



`DELETE` Remove multiple KV pairs from the Namespace. Body should be an array of up to 10,000 keys to be removed.

> DELETE accounts/:account_identifier/storage/kv/namespaces/:namespace_identifier/bulk

