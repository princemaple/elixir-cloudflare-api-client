# IP Address Management Address Maps

## Create Address Map

**POST** `/accounts/{account_id}/addressing/address_maps`

Create a new address map under the account.


## List Address Maps

**GET** `/accounts/{account_id}/addressing/address_maps`

List all address maps owned by the account.


## Update Address Map

**PATCH** `/accounts/{account_id}/addressing/address_maps/{address_map_id}`

Modify properties of an address map owned by the account.


## Address Map Details

**GET** `/accounts/{account_id}/addressing/address_maps/{address_map_id}`

Show a particular address map owned by the account.


## Delete Address Map

**DELETE** `/accounts/{account_id}/addressing/address_maps/{address_map_id}`

Delete a particular address map owned by the account. An Address Map must be disabled before it can be deleted.


## Add an account membership to an Address Map

**PUT** `/accounts/{account_id}/addressing/address_maps/{address_map_id}/accounts/{account_id}`

Add an account as a member of a particular address map.


## Remove an account membership from an Address Map

**DELETE** `/accounts/{account_id}/addressing/address_maps/{address_map_id}/accounts/{account_id}`

Remove an account as a member of a particular address map.


## Add an IP to an Address Map

**PUT** `/accounts/{account_id}/addressing/address_maps/{address_map_id}/ips/{ip_address}`

Add an IP from a prefix owned by the account to a particular address map.


## Remove an IP from an Address Map

**DELETE** `/accounts/{account_id}/addressing/address_maps/{address_map_id}/ips/{ip_address}`

Remove an IP from a particular address map.


## Add a zone membership to an Address Map

**PUT** `/accounts/{account_id}/addressing/address_maps/{address_map_id}/zones/{zone_id}`

Add a zone as a member of a particular address map.


## Remove a zone membership from an Address Map

**DELETE** `/accounts/{account_id}/addressing/address_maps/{address_map_id}/zones/{zone_id}`

Remove a zone as a member of a particular address map.

