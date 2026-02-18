# Radar Bots

## List bots

**GET** `/radar/bots`

Retrieves a list of bots.


## Get bots HTTP requests distribution by dimension

**GET** `/radar/bots/summary/{dimension}`

Retrieves an aggregated summary of bots HTTP requests grouped by the specified dimension.


## Get bots HTTP requests time series

**GET** `/radar/bots/timeseries`

Retrieves bots HTTP request volume over time.


## Get time series distribution of bots HTTP requests by dimension.

**GET** `/radar/bots/timeseries_groups/{dimension}`

Retrieves the distribution of HTTP requests from bots, grouped by the specified dimension over time.


## Get bot details

**GET** `/radar/bots/{bot_slug}`

Retrieves the requested bot information.

