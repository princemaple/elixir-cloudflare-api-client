# Access mTLS authentication

## Add an mTLS certificate

**POST** `/accounts/{account_id}/access/certificates`

Adds a new mTLS root certificate to Access.


## List mTLS certificates

**GET** `/accounts/{account_id}/access/certificates`

Lists all mTLS root certificates.


## Update an mTLS certificate's hostname settings

**PUT** `/accounts/{account_id}/access/certificates/settings`

Updates an mTLS certificate's hostname settings.


## List all mTLS hostname settings

**GET** `/accounts/{account_id}/access/certificates/settings`

List all mTLS hostname settings for this account.


## Update an mTLS certificate

**PUT** `/accounts/{account_id}/access/certificates/{certificate_id}`

Updates a configured mTLS certificate.


## Get an mTLS certificate

**GET** `/accounts/{account_id}/access/certificates/{certificate_id}`

Fetches a single mTLS certificate.


## Delete an mTLS certificate

**DELETE** `/accounts/{account_id}/access/certificates/{certificate_id}`

Deletes an mTLS certificate.

