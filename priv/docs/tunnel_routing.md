# Tunnel Routing

## Create a tunnel route

**POST** `/accounts/{account_id}/teamnet/routes`

Routes a private network through a Cloudflare Tunnel.


## List tunnel routes

**GET** `/accounts/{account_id}/teamnet/routes`

Lists and filters private network routes in an account.


## Get tunnel route by IP

**GET** `/accounts/{account_id}/teamnet/routes/ip/{ip}`

Fetches routes that contain the given IP address.


## Create a tunnel route (CIDR Endpoint)

**POST** `/accounts/{account_id}/teamnet/routes/network/{ip_network_encoded}`

Routes a private network through a Cloudflare Tunnel. The CIDR in `ip_network_encoded` must be written in URL-encoded format.


## Update a tunnel route (CIDR Endpoint)

**PATCH** `/accounts/{account_id}/teamnet/routes/network/{ip_network_encoded}`

Updates an existing private network route in an account. The CIDR in `ip_network_encoded` must be written in URL-encoded format.


## Delete a tunnel route (CIDR Endpoint)

**DELETE** `/accounts/{account_id}/teamnet/routes/network/{ip_network_encoded}`

Deletes a private network route from an account. The CIDR in `ip_network_encoded` must be written in URL-encoded format. If no virtual_network_id is provided it will delete the route from the default vnet. If no tun_type is provided it will fetch the type from the tunnel_id or if that is missing it will assume Cloudflare Tunnel as default. If tunnel_id is provided it will delete the route from that tunnel, otherwise it will delete the route based on the vnet and tun_type.



## Update a tunnel route

**PATCH** `/accounts/{account_id}/teamnet/routes/{route_id}`

Updates an existing private network route in an account. The fields that are meant to be updated should be provided in the body of the request.


## Get tunnel route

**GET** `/accounts/{account_id}/teamnet/routes/{route_id}`

Get a private network route in an account.


## Delete a tunnel route

**DELETE** `/accounts/{account_id}/teamnet/routes/{route_id}`

Deletes a private network route from an account.


