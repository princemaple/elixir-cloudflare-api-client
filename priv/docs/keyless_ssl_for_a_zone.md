# Keyless SSL for a Zone

## Create Keyless SSL Configuration

**POST** `/zones/{zone_id}/keyless_certificates`




## List Keyless SSL Configurations

**GET** `/zones/{zone_id}/keyless_certificates`

List all Keyless SSL configurations for a given zone.


## Edit Keyless SSL Configuration

**PATCH** `/zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`

This will update attributes of a Keyless SSL. Consists of one or more of the following:  host,name,port.


## Get Keyless SSL Configuration

**GET** `/zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`

Get details for one Keyless SSL configuration.


## Delete Keyless SSL Configuration

**DELETE** `/zones/{zone_id}/keyless_certificates/{keyless_certificate_id}`



