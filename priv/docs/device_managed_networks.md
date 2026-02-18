# Device Managed Networks

## Create a device managed network

**POST** `/accounts/{account_id}/devices/networks`

Creates a new device managed network.


## List your device managed networks

**GET** `/accounts/{account_id}/devices/networks`

Fetches a list of managed networks for an account.


## Update a device managed network

**PUT** `/accounts/{account_id}/devices/networks/{network_id}`

Updates a configured device managed network.


## Get device managed network details

**GET** `/accounts/{account_id}/devices/networks/{network_id}`

Fetches details for a single managed network.


## Delete a device managed network

**DELETE** `/accounts/{account_id}/devices/networks/{network_id}`

Deletes a device managed network and fetches a list of the remaining device managed networks for an account.

