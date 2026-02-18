# API Shield Client Certificates for a Zone

## Replace Hostname Associations

**PUT** `/zones/{zone_id}/certificate_authorities/hostname_associations`

Replace Hostname Associations


## List Hostname Associations

**GET** `/zones/{zone_id}/certificate_authorities/hostname_associations`

List Hostname Associations


## Create Client Certificate

**POST** `/zones/{zone_id}/client_certificates`

Create a new API Shield mTLS Client Certificate


## List Client Certificates

**GET** `/zones/{zone_id}/client_certificates`

List all of your Zone's API Shield mTLS Client Certificates by Status and/or using Pagination


## Reactivate Client Certificate

**PATCH** `/zones/{zone_id}/client_certificates/{client_certificate_id}`

If a API Shield mTLS Client Certificate is in a pending_revocation state, you may reactivate it with this endpoint.


## Client Certificate Details

**GET** `/zones/{zone_id}/client_certificates/{client_certificate_id}`

Get Details for a single mTLS API Shield Client Certificate


## Revoke Client Certificate

**DELETE** `/zones/{zone_id}/client_certificates/{client_certificate_id}`

Set a API Shield mTLS Client Certificate to pending_revocation status for processing to revoked status.

