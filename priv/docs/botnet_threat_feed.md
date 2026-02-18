# Botnet Threat Feed

## Get daily report

**GET** `/accounts/{account_id}/botnet_feed/asn/{asn_id}/day_report`

Gets all the data the botnet tracking database has for a given ASN registered to user account for given date. If no date is given, it will return results for the previous day.


## Get full report

**GET** `/accounts/{account_id}/botnet_feed/asn/{asn_id}/full_report`

Gets all the data the botnet threat feed tracking database has for a given ASN registered to user account.


## Get list of ASNs

**GET** `/accounts/{account_id}/botnet_feed/configs/asn`

Gets a list of all ASNs registered for a user for the DDoS Botnet Feed API.


## Delete an ASN

**DELETE** `/accounts/{account_id}/botnet_feed/configs/asn/{asn_id}`

Delete an ASN from botnet threat feed for a given user.

