# Certificate Packs

## List Certificate Packs

**GET** `/zones/{zone_id}/ssl/certificate_packs`

For a given zone, list all active certificate packs.


## Order Advanced Certificate Manager Certificate Pack

**POST** `/zones/{zone_id}/ssl/certificate_packs/order`

For a given zone, order an advanced certificate pack.


## Get Certificate Pack Quotas

**GET** `/zones/{zone_id}/ssl/certificate_packs/quota`

For a given zone, list certificate pack quotas.


## Restart Validation or Update Advanced Certificate Manager Certificate Pack

**PATCH** `/zones/{zone_id}/ssl/certificate_packs/{certificate_pack_id}`

For a given zone, restart validation or add cloudflare branding for an advanced certificate pack.  The former is only a validation operation for a Certificate Pack in a validation_timed_out status.


## Get Certificate Pack

**GET** `/zones/{zone_id}/ssl/certificate_packs/{certificate_pack_id}`

For a given zone, get a certificate pack.


## Delete Advanced Certificate Manager Certificate Pack

**DELETE** `/zones/{zone_id}/ssl/certificate_packs/{certificate_pack_id}`

For a given zone, delete an advanced certificate pack.

