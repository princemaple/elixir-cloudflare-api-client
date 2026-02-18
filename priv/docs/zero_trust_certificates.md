# Zero Trust certificates

## Create Zero Trust certificate

**POST** `/accounts/{account_id}/gateway/certificates`

Create a new Zero Trust certificate.


## List Zero Trust certificates

**GET** `/accounts/{account_id}/gateway/certificates`

List all Zero Trust certificates for an account.


## Get Zero Trust certificate details

**GET** `/accounts/{account_id}/gateway/certificates/{certificate_id}`

Get a single Zero Trust certificate.


## Delete Zero Trust certificate

**DELETE** `/accounts/{account_id}/gateway/certificates/{certificate_id}`

Delete a gateway-managed Zero Trust certificate. You must deactivate the certificate from the edge (inactive) before deleting it.


## Activate a Zero Trust certificate

**POST** `/accounts/{account_id}/gateway/certificates/{certificate_id}/activate`

Bind a single Zero Trust certificate to the edge.


## Deactivate a Zero Trust certificate

**POST** `/accounts/{account_id}/gateway/certificates/{certificate_id}/deactivate`

Unbind a single Zero Trust certificate from the edge.

