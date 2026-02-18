# Radar Locations

## List locations

**GET** `/radar/entities/locations`

Retrieves a list of locations.


## Get location details

**GET** `/radar/entities/locations/{location}`

Retrieves the requested location information. (A confidence level below `5` indicates a low level of confidence in the traffic data - normally this happens because Cloudflare has a small amount of traffic from/to this location).

