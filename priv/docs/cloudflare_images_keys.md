# Cloudflare Images Keys

## List Signing Keys

**GET** `/accounts/{account_id}/images/v1/keys`

Lists your signing keys. These can be found on your Cloudflare Images dashboard.


## Create a new Signing Key

**PUT** `/accounts/{account_id}/images/v1/keys/{signing_key_name}`

Create a new signing key with specified name. Returns all keys available.


## Delete Signing Key

**DELETE** `/accounts/{account_id}/images/v1/keys/{signing_key_name}`

Delete signing key with specified name. Returns all keys available.
When last key is removed, a new default signing key will be generated.


