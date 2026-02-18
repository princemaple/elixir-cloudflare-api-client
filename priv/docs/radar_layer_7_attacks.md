# Radar Layer 7 Attacks

## Get layer 7 attacks by HTTP method summary

**GET** `/radar/attacks/layer7/summary/http_method`

Retrieves the distribution of layer 7 attacks by HTTP method.


## Get layer 7 attacks by HTTP version summary

**GET** `/radar/attacks/layer7/summary/http_version`

Retrieves the distribution of layer 7 attacks by HTTP version.


## Get layer 7 attacks by targeted industry summary

**GET** `/radar/attacks/layer7/summary/industry`

Retrieves the distribution of layer 7 attacks by targeted industry.


## Get layer 7 attacks by IP version summary

**GET** `/radar/attacks/layer7/summary/ip_version`

Retrieves the distribution of layer 7 attacks by IP version.


## Get layer 7 attacks by managed rules summary

**GET** `/radar/attacks/layer7/summary/managed_rules`

Retrieves the distribution of layer 7 attacks by managed rules.


## Get layer 7 attacks by mitigation product summary

**GET** `/radar/attacks/layer7/summary/mitigation_product`

Retrieves the distribution of layer 7 attacks by mitigation product.


## Get layer 7 attacks by targeted vertical summary

**GET** `/radar/attacks/layer7/summary/vertical`

Retrieves the distribution of layer 7 attacks by targeted vertical.


## Get layer 7 attacks summary by dimension

**GET** `/radar/attacks/layer7/summary/{dimension}`

Retrieves the distribution of layer 7 attacks by the specified dimension.


## Get layer 7 attacks time series

**GET** `/radar/attacks/layer7/timeseries`

Retrieves layer 7 attacks over time.


## Get layer 7 attacks by HTTP method time series

**GET** `/radar/attacks/layer7/timeseries_groups/http_method`

Retrieves the distribution of layer 7 attacks by HTTP method over time.


## Get layer 7 attacks by HTTP version time series

**GET** `/radar/attacks/layer7/timeseries_groups/http_version`

Retrieves the distribution of layer 7 attacks by HTTP version over time.


## Get layer 7 attacks by target industries time series

**GET** `/radar/attacks/layer7/timeseries_groups/industry`

Retrieves the distribution of layer 7 attacks by targeted industry over time.


## Get layer 7 attacks by IP version time series

**GET** `/radar/attacks/layer7/timeseries_groups/ip_version`

Retrieves the distribution of layer 7 attacks by IP version used over time.


## Get layer 7 attacks by managed rules time series

**GET** `/radar/attacks/layer7/timeseries_groups/managed_rules`

Retrieves the distribution of layer 7 attacks by managed rules over time.


## Get layer 7 attacks by mitigation product time series

**GET** `/radar/attacks/layer7/timeseries_groups/mitigation_product`

Retrieves the distribution of layer 7 attacks by mitigation product over time.


## Get layer 7 attacks by vertical time series

**GET** `/radar/attacks/layer7/timeseries_groups/vertical`

Retrieves the distribution of layer 7 attacks by targeted vertical over time.


## Get layer 7 attacks time series grouped by dimension

**GET** `/radar/attacks/layer7/timeseries_groups/{dimension}`

Retrieves the distribution of layer 7 attacks grouped by dimension over time.


## Get top origin ASes of layer 7 attacks

**GET** `/radar/attacks/layer7/top/ases/origin`

Retrieves the top origin autonomous systems of layer 7 attacks. Values are percentages of the total layer 7 attacks, with the origin autonomous systems determined by the client IP address.


## Get top layer 7 attack pairs (origin and target locations)

**GET** `/radar/attacks/layer7/top/attacks`

Retrieves the top attacks from origin to target location. Values are percentages of the total layer 7 attacks (with billing country). The attack magnitude can be defined by the number of mitigated requests or by the number of zones affected. You can optionally limit the number of attacks by origin/target location (useful if all the top attacks are from or to the same location).


## Get top industries targeted by layer 7 attacks

**GET** `/radar/attacks/layer7/top/industry`

This endpoint is deprecated. To continue getting this data, switch to the summary by industry endpoint.


## Get top origin locations of layer 7 attacks

**GET** `/radar/attacks/layer7/top/locations/origin`

Retrieves the top origin locations of layer 7 attacks. Values are percentages of the total layer 7 attacks, with the origin location determined by the client IP address.


## Get top target locations of layer 7 attacks

**GET** `/radar/attacks/layer7/top/locations/target`

Retrieves the top target locations of and by layer 7 attacks. Values are a percentage out of the total layer 7 attacks. The target location is determined by the attacked zone's billing country, when available.


## Get top verticals targeted by layer 7 attacks

**GET** `/radar/attacks/layer7/top/vertical`

This endpoint is deprecated. To continue getting this data, switch to the summary by vertical endpoint.

