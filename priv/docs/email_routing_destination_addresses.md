# Email Routing destination addresses

## Create a destination address

**POST** `/accounts/{account_id}/email/routing/addresses`

Create a destination address to forward your emails to. Destination addresses need to be verified before they can be used.


## List destination addresses

**GET** `/accounts/{account_id}/email/routing/addresses`

Lists existing destination addresses.


## Get a destination address

**GET** `/accounts/{account_id}/email/routing/addresses/{destination_address_identifier}`

Gets information for a specific destination email already created.


## Delete destination address

**DELETE** `/accounts/{account_id}/email/routing/addresses/{destination_address_identifier}`

Deletes a specific destination address.

