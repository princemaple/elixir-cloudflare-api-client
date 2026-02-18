# Per-Hostname TLS Settings

## List TLS setting for hostnames

**GET** `/zones/{zone_id}/hostnames/settings/{setting_id}`

List the requested TLS setting for the hostnames under this zone.


## Edit TLS setting for hostname

**PUT** `/zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`

Update the tls setting value for the hostname.


## Get TLS setting for hostname

**GET** `/zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`

Get the requested TLS setting for the hostname.


## Delete TLS setting for hostname

**DELETE** `/zones/{zone_id}/hostnames/settings/{setting_id}/{hostname}`

Delete the tls setting value for the hostname.

