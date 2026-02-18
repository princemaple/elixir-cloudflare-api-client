# Magic PCAP collection

## Create PCAP request

**POST** `/accounts/{account_id}/pcaps`

Create new PCAP request for account.


## List packet capture requests

**GET** `/accounts/{account_id}/pcaps`

Lists all packet capture requests for an account.


## Add buckets for full packet captures

**POST** `/accounts/{account_id}/pcaps/ownership`

Adds an AWS or GCP bucket to use with full packet captures.


## List PCAPs Bucket Ownership

**GET** `/accounts/{account_id}/pcaps/ownership`

List all buckets configured for use with PCAPs API.


## Validate buckets for full packet captures

**POST** `/accounts/{account_id}/pcaps/ownership/validate`

Validates buckets added to the packet captures API.


## Delete buckets for full packet captures

**DELETE** `/accounts/{account_id}/pcaps/ownership/{ownership_id}`

Deletes buckets added to the packet captures API.


## Get PCAP request

**GET** `/accounts/{account_id}/pcaps/{pcap_id}`

Get information for a PCAP request by id.


## Download Simple PCAP

**GET** `/accounts/{account_id}/pcaps/{pcap_id}/download`

Download PCAP information into a file. Response is a binary PCAP file.


## Stop full PCAP

**PUT** `/accounts/{account_id}/pcaps/{pcap_id}/stop`

Stop full PCAP.

