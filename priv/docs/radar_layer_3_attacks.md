# Radar Layer 3 Attacks

## Get layer 3 attacks by bitrate summary

**GET** `/radar/attacks/layer3/summary/bitrate`

Retrieves the distribution of layer 3 attacks by bitrate.


## Get layer 3 attacks by duration summary

**GET** `/radar/attacks/layer3/summary/duration`

Retrieves the distribution of layer 3 attacks by duration.


## Get layer 3 attacks by targeted industry summary

**GET** `/radar/attacks/layer3/summary/industry`

Retrieves the distribution of layer 3 attacks by targeted industry.


## Get layer 3 attacks by IP version summary

**GET** `/radar/attacks/layer3/summary/ip_version`

Retrieves the distribution of layer 3 attacks by IP version.


## Get layer 3 attacks by protocol summary

**GET** `/radar/attacks/layer3/summary/protocol`

Retrieves the distribution of layer 3 attacks by protocol.


## Get layer 3 attacks by vector summary

**GET** `/radar/attacks/layer3/summary/vector`

Retrieves the distribution of layer 3 attacks by vector.


## Get layer 3 attacks by targeted vertical summary

**GET** `/radar/attacks/layer3/summary/vertical`

Retrieves the distribution of layer 3 attacks by targeted vertical.


## Get layer 3 attacks summary by dimension

**GET** `/radar/attacks/layer3/summary/{dimension}`

Retrieves the distribution of layer 3 attacks by the specified dimension.


## Get layer 3 attacks by bytes time series

**GET** `/radar/attacks/layer3/timeseries`

Retrieves layer 3 attacks over time.


## Get layer 3 attacks by bitrate time series

**GET** `/radar/attacks/layer3/timeseries_groups/bitrate`

Retrieves the distribution of layer 3 attacks by bitrate over time.


## Get layer 3 attacks by duration time series

**GET** `/radar/attacks/layer3/timeseries_groups/duration`

Retrieves the distribution of layer 3 attacks by duration over time.


## Get layer 3 attacks by target industries time series

**GET** `/radar/attacks/layer3/timeseries_groups/industry`

Retrieves the distribution of layer 3 attacks by targeted industry over time.


## Get layer 3 attacks by IP version time series

**GET** `/radar/attacks/layer3/timeseries_groups/ip_version`

Retrieves the distribution of layer 3 attacks by IP version over time.


## Get layer 3 attacks by protocol time series

**GET** `/radar/attacks/layer3/timeseries_groups/protocol`

Retrieves the distribution of layer 3 attacks by protocol over time.


## Get layer 3 attacks by vector time series

**GET** `/radar/attacks/layer3/timeseries_groups/vector`

Retrieves the distribution of layer 3 attacks by vector over time.


## Get layer 3 attacks by vertical time series

**GET** `/radar/attacks/layer3/timeseries_groups/vertical`

Retrieves the distribution of layer 3 attacks by targeted vertical over time.


## Get layer 3 attacks time series grouped by dimension

**GET** `/radar/attacks/layer3/timeseries_groups/{dimension}`

Retrieves the distribution of layer 3 attacks grouped by dimension over time.


## Get top layer 3 attack pairs (origin and target locations)

**GET** `/radar/attacks/layer3/top/attacks`

Retrieves the top layer 3 attacks from origin to target location. Values are a percentage out of the total layer 3 attacks (with billing country). You can optionally limit the number of attacks by origin/target location (useful if all the top attacks are from or to the same location).


## Get top industries targeted by layer 3 attacks

**GET** `/radar/attacks/layer3/top/industry`

This endpoint is deprecated. To continue getting this data, switch to the summary by industry endpoint.


## Get top origin locations of layer 3 attacks

**GET** `/radar/attacks/layer3/top/locations/origin`

Retrieves the origin locations of layer 3 attacks.


## Get top target locations of layer 3 attacks

**GET** `/radar/attacks/layer3/top/locations/target`

Retrieves the target locations of layer 3 attacks.


## Get top verticals targeted by layer 3 attacks

**GET** `/radar/attacks/layer3/top/vertical`

This endpoint is deprecated. To continue getting this data, switch to the summary by vertical endpoint.

