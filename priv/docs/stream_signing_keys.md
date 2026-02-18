# Stream Signing Keys

## Create signing keys

**POST** `/accounts/{account_id}/stream/keys`

Creates an RSA private key in PEM and JWK formats. Key files are only displayed once after creation. Keys are created, used, and deleted independently of videos, and every key can sign any video.


## List signing keys

**GET** `/accounts/{account_id}/stream/keys`

Lists the video ID and creation date and time when a signing key was created.


## Delete signing keys

**DELETE** `/accounts/{account_id}/stream/keys/{identifier}`

Deletes signing keys and revokes all signed URLs generated with the key.

