# Zone-Level Access mTLS authentication

## Add an mTLS certificate

**POST** `/zones/{zone_id}/access/certificates`

Adds a new mTLS root certificate to Access.


## List mTLS certificates

**GET** `/zones/{zone_id}/access/certificates`

Lists all mTLS certificates.


## Update an mTLS certificate's hostname settings

**PUT** `/zones/{zone_id}/access/certificates/settings`

Updates an mTLS certificate's hostname settings.


## List all mTLS hostname settings

**GET** `/zones/{zone_id}/access/certificates/settings`

List all mTLS hostname settings for this zone.


## Update an mTLS certificate

**PUT** `/zones/{zone_id}/access/certificates/{certificate_id}`

Updates a configured mTLS certificate.


## Get an mTLS certificate

**GET** `/zones/{zone_id}/access/certificates/{certificate_id}`

Fetches a single mTLS certificate.


## Delete an mTLS certificate

**DELETE** `/zones/{zone_id}/access/certificates/{certificate_id}`

Deletes an mTLS certificate.

