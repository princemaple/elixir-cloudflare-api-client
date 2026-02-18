# Radar Leaked Credential Checks

## Get HTTP authentication requests by bot class summary

**GET** `/radar/leaked_credential_checks/summary/bot_class`

Retrieves the distribution of HTTP authentication requests by bot class.


## Get HTTP authentication requests by compromised credential status summary

**GET** `/radar/leaked_credential_checks/summary/compromised`

Retrieves the distribution of HTTP authentication requests by compromised credential status.


## Get HTTP authentication requests distribution by dimension

**GET** `/radar/leaked_credential_checks/summary/{dimension}`

Retrieves an aggregated summary of HTTP authentication requests grouped by the specified dimension.


## Get HTTP authentication requests by bot class time series

**GET** `/radar/leaked_credential_checks/timeseries_groups/bot_class`

Retrieves the distribution of HTTP authentication requests by bot class over time.


## Get HTTP authentication requests by compromised credential status time series

**GET** `/radar/leaked_credential_checks/timeseries_groups/compromised`

Retrieves the distribution of HTTP authentication requests by compromised credential status over time.


## Get time series distribution of HTTP authentication requests by dimension.

**GET** `/radar/leaked_credential_checks/timeseries_groups/{dimension}`

Retrieves the distribution of HTTP authentication requests, grouped by the specified dimension over time.

