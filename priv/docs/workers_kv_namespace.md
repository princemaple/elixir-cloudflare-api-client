# Workers KV Namespace

## Create a Namespace

**POST** `/accounts/{account_id}/storage/kv/namespaces`

Creates a namespace under the given title. A `400` is returned if the account already owns a namespace with this title. A namespace must be explicitly deleted to be replaced.


## List Namespaces

**GET** `/accounts/{account_id}/storage/kv/namespaces`

Returns the namespaces owned by an account.


## Rename a Namespace

**PUT** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}`

Modifies a namespace's title.


## Get a Namespace

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}`

Get the namespace corresponding to the given ID.


## Remove a Namespace

**DELETE** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}`

Deletes the namespace corresponding to the given ID.


## Write multiple key-value pairs

**PUT** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk`

Write multiple keys and values at once. Body should be an array of up to 10,000 key-value pairs to be stored, along with optional expiration information. Existing values and expirations will be overwritten. If neither `expiration` nor `expiration_ttl` is specified, the key-value pair will never expire. If both are set, `expiration_ttl` is used and `expiration` is ignored. The entire request size must be 100 megabytes or less.


## Delete multiple key-value pairs

**DELETE** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk`

Remove multiple KV pairs from the namespace. Body should be an array of up to 10,000 keys to be removed.


## Delete multiple key-value pairs

**POST** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk/delete`

Remove multiple KV pairs from the namespace. Body should be an array of up to 10,000 keys to be removed.


## Get multiple key-value pairs

**POST** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/bulk/get`

Retrieve up to 100 KV pairs from the namespace. Keys must contain text-based values. JSON values can optionally be parsed instead of being returned as a string value. Metadata can be included if `withMetadata` is true.


## List a Namespace's Keys

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/keys`

Lists a namespace's keys.


## Read the metadata for a key

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/metadata/{key_name}`

Returns the metadata associated with the given key in the given namespace. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name.


## Write key-value pair with optional metadata

**PUT** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/values/{key_name}`

Write a value identified by a key. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name. Body should be the value to be stored. If JSON metadata to be associated with the key/value pair is needed, use `multipart/form-data` content type for your PUT request (see dropdown below in `REQUEST BODY SCHEMA`). Existing values, expirations, and metadata will be overwritten. If neither `expiration` nor `expiration_ttl` is specified, the key-value pair will never expire. If both are set, `expiration_ttl` is used and `expiration` is ignored.


## Read key-value pair

**GET** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/values/{key_name}`

Returns the value associated with the given key in the given namespace. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name. If the KV-pair is set to expire at some point, the expiration time as measured in seconds since the UNIX epoch will be returned in the `expiration` response header.


## Delete key-value pair

**DELETE** `/accounts/{account_id}/storage/kv/namespaces/{namespace_id}/values/{key_name}`

Remove a KV pair from the namespace. Use URL-encoding to use special characters (for example, `:`, `!`, `%`) in the key name.

