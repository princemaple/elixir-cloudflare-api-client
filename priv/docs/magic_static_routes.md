# Magic Static Routes

## Update Many Routes

**PUT** `/accounts/{account_id}/magic/routes`

Update multiple Magic static routes. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes. Only fields for a route that need to be changed need be provided.


## Create a Route

**POST** `/accounts/{account_id}/magic/routes`

Creates a new Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.


## List Routes

**GET** `/accounts/{account_id}/magic/routes`

List all Magic static routes.


## Delete Many Routes

**DELETE** `/accounts/{account_id}/magic/routes`

Delete multiple Magic static routes.


## Update Route

**PUT** `/accounts/{account_id}/magic/routes/{route_id}`

Update a specific Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.


## Route Details

**GET** `/accounts/{account_id}/magic/routes/{route_id}`

Get a specific Magic static route.


## Delete Route

**DELETE** `/accounts/{account_id}/magic/routes/{route_id}`

Disable and remove a specific Magic static route.

