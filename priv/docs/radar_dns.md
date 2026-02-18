# Radar DNS

## Get DNS queries by cache status summary

**GET** `/radar/dns/summary/cache_hit`

Retrieves the distribution of DNS queries by cache status.


## Get DNS queries by DNSSEC support summary

**GET** `/radar/dns/summary/dnssec`

Retrieves the distribution of DNS responses by DNSSEC (DNS Security Extensions) support.


## Get DNS queries by DNSSEC awareness summary

**GET** `/radar/dns/summary/dnssec_aware`

Retrieves the distribution of DNS queries by DNSSEC (DNS Security Extensions) client awareness.


## Get DNS queries by DNSSEC end-to-end summary

**GET** `/radar/dns/summary/dnssec_e2e`

Retrieves the distribution of DNSSEC-validated answers by end-to-end security status.


## Get DNS queries by IP version summary

**GET** `/radar/dns/summary/ip_version`

Retrieves the distribution of DNS queries by IP version.


## Get DNS queries by matching answer summary

**GET** `/radar/dns/summary/matching_answer`

Retrieves the distribution of DNS queries by matching answers.


## Get DNS queries by protocol summary

**GET** `/radar/dns/summary/protocol`

Retrieves the distribution of DNS queries by DNS transport protocol.


## Get DNS queries by type summary

**GET** `/radar/dns/summary/query_type`

Retrieves the distribution of DNS queries by type.


## Get DNS queries by response code summary

**GET** `/radar/dns/summary/response_code`

Retrieves the distribution of DNS queries by response code.


## Get DNS queries by response TTL summary

**GET** `/radar/dns/summary/response_ttl`

Retrieves the distribution of DNS queries by minimum response TTL.


## Get DNS summary by dimension

**GET** `/radar/dns/summary/{dimension}`

Retrieves the distribution of DNS queries by the specified dimension.


## Get DNS queries time series

**GET** `/radar/dns/timeseries`

Retrieves normalized query volume to the 1.1.1.1 DNS resolver over time.


## Get DNS queries by cache status time series

**GET** `/radar/dns/timeseries_groups/cache_hit`

Retrieves the distribution of DNS queries by cache status over time.


## Get DNS queries by DNSSEC support time series

**GET** `/radar/dns/timeseries_groups/dnssec`

Retrieves the distribution of DNS responses by DNSSEC (DNS Security Extensions) support over time.


## Get DNS queries by DNSSEC awareness time series

**GET** `/radar/dns/timeseries_groups/dnssec_aware`

Retrieves the distribution of DNS queries by DNSSEC (DNS Security Extensions) client awareness over time.


## Get DNS queries by DNSSEC end-to-end time series

**GET** `/radar/dns/timeseries_groups/dnssec_e2e`

Retrieves the distribution of DNSSEC-validated answers by end-to-end security status over time.


## Get DNS queries by IP version time series

**GET** `/radar/dns/timeseries_groups/ip_version`

Retrieves the distribution of DNS queries by IP version over time.


## Get DNS queries by matching answer time series

**GET** `/radar/dns/timeseries_groups/matching_answer`

Retrieves the distribution of DNS queries by matching answers over time.


## Get DNS queries by protocol time series

**GET** `/radar/dns/timeseries_groups/protocol`

Retrieves the distribution of DNS queries by DNS transport protocol over time.


## Get DNS queries by type time series

**GET** `/radar/dns/timeseries_groups/query_type`

Retrieves the distribution of DNS queries by type over time.


## Get DNS queries by response code time series

**GET** `/radar/dns/timeseries_groups/response_code`

Retrieves the distribution of DNS queries by response code over time.


## Get DNS queries by response TTL time series

**GET** `/radar/dns/timeseries_groups/response_ttl`

Retrieves the distribution of DNS queries by minimum answer TTL over time.


## Get DNS time series grouped by dimension

**GET** `/radar/dns/timeseries_groups/{dimension}`

Retrieves the distribution of DNS queries grouped by dimension over time.


## Get top ASes by DNS queries

**GET** `/radar/dns/top/ases`

Retrieves the top autonomous systems by DNS queries made to 1.1.1.1 DNS resolver.


## Get top locations by DNS queries

**GET** `/radar/dns/top/locations`

Retrieves the top locations by DNS queries made to 1.1.1.1 DNS resolver.

