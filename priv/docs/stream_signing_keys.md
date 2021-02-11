## Stream Signing Keys

Stream signing keys are required to use signed URLs with Stream videos.

### Create a Signing Key

**Permission needed:** `None`

Available in:



`POST` Upon creation you will get a RSA private key in PEM and JWK formats. Keys are created, used and deleted independently of videos. Every key can sign any of your videos. Key files are displayed only once upon creation.

> POST accounts/:account_identifier/stream/keys


### List Signing Keys

**Permission needed:** `None`

Available in:



`GET` 

> GET accounts/:account_identifier/stream/keys


### Delete key

**Permission needed:** `None`

Available in:



`DELETE` Deleting a key revokes all signed URLs generated with the key.

> DELETE accounts/:account_identifier/stream/keys/:identifier

