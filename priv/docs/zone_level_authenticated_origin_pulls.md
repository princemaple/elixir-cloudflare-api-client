# Zone-Level Authenticated Origin Pulls

## Upload Certificate

**POST** `/zones/{zone_id}/origin_tls_client_auth`

Upload your own certificate you want Cloudflare to use for edge-to-origin communication to override the shared certificate. Please note that it is important to keep only one certificate active. Also, make sure to enable zone-level authenticated origin pulls by making a PUT call to settings endpoint to see the uploaded certificate in use.


## List Certificates

**GET** `/zones/{zone_id}/origin_tls_client_auth`




## Set Enablement for Zone

**PUT** `/zones/{zone_id}/origin_tls_client_auth/settings`

Enable or disable zone-level authenticated origin pulls. 'enabled' should be set true either before/after the certificate is uploaded to see the certificate in use.


## Get Enablement Setting for Zone

**GET** `/zones/{zone_id}/origin_tls_client_auth/settings`

Get whether zone-level authenticated origin pulls is enabled or not. It is false by default.


## Get Certificate Details

**GET** `/zones/{zone_id}/origin_tls_client_auth/{certificate_id}`




## Delete Certificate

**DELETE** `/zones/{zone_id}/origin_tls_client_auth/{certificate_id}`



