# Origin CA

## Create Certificate

**POST** `/certificates`

Create an Origin CA certificate. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).


## List Certificates

**GET** `/certificates`

List all existing Origin CA certificates for a given zone. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).


## Get Certificate

**GET** `/certificates/{certificate_id}`

Get an existing Origin CA certificate by its serial number. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).


## Revoke Certificate

**DELETE** `/certificates/{certificate_id}`

Revoke an existing Origin CA certificate by its serial number. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).

