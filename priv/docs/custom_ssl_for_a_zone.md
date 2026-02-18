# Custom SSL for a Zone

## Create SSL Configuration

**POST** `/zones/{zone_id}/custom_certificates`

Upload a new SSL certificate for a zone.


## List SSL Configurations

**GET** `/zones/{zone_id}/custom_certificates`

List, search, and filter all of your custom SSL certificates. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.


## Re-prioritize SSL Certificates

**PUT** `/zones/{zone_id}/custom_certificates/prioritize`

If a zone has multiple SSL certificates, you can set the order in which they should be used during a request. The higher priority will break ties across overlapping 'legacy_custom' certificates.


## Edit SSL Configuration

**PATCH** `/zones/{zone_id}/custom_certificates/{custom_certificate_id}`

Upload a new private key and/or PEM/CRT for the SSL certificate. Note: PATCHing a configuration for sni_custom certificates will result in a new resource id being returned, and the previous one being deleted.


## SSL Configuration Details

**GET** `/zones/{zone_id}/custom_certificates/{custom_certificate_id}`




## Delete SSL Configuration

**DELETE** `/zones/{zone_id}/custom_certificates/{custom_certificate_id}`

Remove a SSL certificate from a zone.

