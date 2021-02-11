# Stream Signing Keys

Stream signing keys are required to use signed URLs with Stream videos.

## Create a Signing Key

`POST` Upon creation you will get a RSA private key in PEM and JWK formats. Keys are created, used and deleted independently of videos. Every key can sign any of your videos. Key files are displayed only once upon creation.

> POST accounts/:account_identifier/stream/keys

**Permission needed:** `None`

Available in:




## List Signing Keys

`GET` 

> GET accounts/:account_identifier/stream/keys

**Permission needed:** `None`

Available in:




## Delete key

`DELETE` Deleting a key revokes all signed URLs generated with the key.

> DELETE accounts/:account_identifier/stream/keys/:identifier

**Permission needed:** `None`

Available in:



