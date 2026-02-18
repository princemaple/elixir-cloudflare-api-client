# Radar Certificate Transparency

## List certificate authorities

**GET** `/radar/ct/authorities`

Retrieves a list of certificate authorities.


## Get certificate authority details

**GET** `/radar/ct/authorities/{ca_slug}`

Retrieves the requested CA information.


## List certificate logs

**GET** `/radar/ct/logs`

Retrieves a list of certificate logs.


## Get certificate log details

**GET** `/radar/ct/logs/{log_slug}`

Retrieves the requested certificate log information.


## Get certificate distribution by dimension

**GET** `/radar/ct/summary/{dimension}`

Retrieves an aggregated summary of certificates grouped by the specified dimension.


## Get certificates time series

**GET** `/radar/ct/timeseries`

Retrieves certificate volume over time.


## Get time series of certificate distribution by dimension

**GET** `/radar/ct/timeseries_groups/{dimension}`

Retrieves the distribution of certificates grouped by the specified dimension over time.

