# Custom Hostname for a Zone

## Create Custom Hostname

**POST** `/zones/{zone_id}/custom_hostnames`

Add a new custom hostname and request that an SSL certificate be issued for it. One of three validation methods—http, txt, email—should be used, with 'http' recommended if the CNAME is already in place (or will be soon). Specifying 'email' will send an email to the WHOIS contacts on file for the base domain plus hostmaster, postmaster, webmaster, admin, administrator. If http is used and the domain is not already pointing to the Managed CNAME host, the PATCH method must be used once it is (to complete validation).  Enable bundling of certificates using the custom_cert_bundle field. The bundling process requires the following condition One certificate in the bundle must use an RSA, and the other must use an ECDSA.


## List Custom Hostnames

**GET** `/zones/{zone_id}/custom_hostnames`

List, search, sort, and filter all of your custom hostnames.


## Edit Custom Hostname

**PATCH** `/zones/{zone_id}/custom_hostnames/{custom_hostname_id}`

Modify SSL configuration for a custom hostname. When sent with SSL config that matches existing config, used to indicate that hostname should pass domain control validation (DCV). Can also be used to change validation type, e.g., from 'http' to 'email'. Bundle an existing certificate with another certificate by using the "custom_cert_bundle" field. The bundling process supports combining certificates as long as the following condition is met. One certificate must use the RSA algorithm, and the other must use the ECDSA algorithm.


## Custom Hostname Details

**GET** `/zones/{zone_id}/custom_hostnames/{custom_hostname_id}`




## Delete Custom Hostname (and any issued SSL certificates)

**DELETE** `/zones/{zone_id}/custom_hostnames/{custom_hostname_id}`




## Replace Custom Certificate and Custom Key In Custom Hostname

**PUT** `/zones/{zone_id}/custom_hostnames/{custom_hostname_id}/certificate_pack/{certificate_pack_id}/certificates/{certificate_id}`

Replace a single custom certificate within a certificate pack that contains two bundled certificates. The replacement must adhere to the following constraints. You can only replace an RSA certificate with another RSA certificate or an ECDSA certificate with another ECDSA certificate.


## Delete Single Certificate And Key For Custom Hostname

**DELETE** `/zones/{zone_id}/custom_hostnames/{custom_hostname_id}/certificate_pack/{certificate_pack_id}/certificates/{certificate_id}`

Delete a single custom certificate from a certificate pack that contains two bundled certificates. Deletion is subject to the following constraints. You cannot delete a certificate if it is the only remaining certificate in the pack. At least one certificate must remain in the pack.

