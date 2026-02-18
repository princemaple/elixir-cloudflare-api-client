# Worker Routes

## Create Route

**POST** `/zones/{zone_id}/workers/routes`

Creates a route that maps a URL pattern to a Worker.


## List Routes

**GET** `/zones/{zone_id}/workers/routes`

Returns routes for a zone.


## Update Route

**PUT** `/zones/{zone_id}/workers/routes/{route_id}`

Updates the URL pattern or Worker associated with a route.


## Get Route

**GET** `/zones/{zone_id}/workers/routes/{route_id}`

Returns information about a route, including URL pattern and Worker.


## Delete Route

**DELETE** `/zones/{zone_id}/workers/routes/{route_id}`

Deletes a route.

