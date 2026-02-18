# Per-hostname Authenticated Origin Pull

## Enable or Disable a Hostname for Client Authentication

**PUT** `/zones/{zone_id}/origin_tls_client_auth/hostnames`

Associate a hostname to a certificate and enable, disable or invalidate the association. If disabled, client certificate will not be sent to the hostname even if activated at the zone level. 100 maximum associations on a single certificate are allowed. Note: Use a null value for parameter *enabled* to invalidate the association.


## Upload a Hostname Client Certificate

**POST** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates`

Upload a certificate to be used for client authentication on a hostname. 10 hostname certificates per zone are allowed.


## List Certificates

**GET** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates`




## Get the Hostname Client Certificate

**GET** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates/{certificate_id}`

Get the certificate by ID to be used for client authentication on a hostname.


## Delete Hostname Client Certificate

**DELETE** `/zones/{zone_id}/origin_tls_client_auth/hostnames/certificates/{certificate_id}`




## Get the Hostname Status for Client Authentication

**GET** `/zones/{zone_id}/origin_tls_client_auth/hostnames/{hostname}`



