# Radar Email Routing

## Get email ARC validation summary

**GET** `/radar/email/routing/summary/arc`

Retrieves the distribution of emails by ARC (Authenticated Received Chain) validation.


## Get email DKIM validation summary

**GET** `/radar/email/routing/summary/dkim`

Retrieves the distribution of emails by DKIM (DomainKeys Identified Mail) validation.


## Get email DMARC validation summary

**GET** `/radar/email/routing/summary/dmarc`

Retrieves the distribution of emails by DMARC (Domain-based Message Authentication, Reporting and Conformance) validation.


## Get email encryption status summary

**GET** `/radar/email/routing/summary/encrypted`

Retrieves the distribution of emails by encryption status (encrypted vs. not-encrypted).


## Get email IP version summary

**GET** `/radar/email/routing/summary/ip_version`

Retrieves the distribution of emails by IP version.


## Get email SPF validation summary

**GET** `/radar/email/routing/summary/spf`

Retrieves the distribution of emails by SPF (Sender Policy Framework) validation.


## Get email routing summary by dimension

**GET** `/radar/email/routing/summary/{dimension}`

Retrieves the distribution of email routing metrics by the specified dimension.


## Get email ARC validation time series

**GET** `/radar/email/routing/timeseries_groups/arc`

Retrieves the distribution of emails by ARC (Authenticated Received Chain) validation over time.


## Get email DKIM validation time series

**GET** `/radar/email/routing/timeseries_groups/dkim`

Retrieves the distribution of emails by DKIM (DomainKeys Identified Mail) validation over time.


## Get email DMARC validation time series

**GET** `/radar/email/routing/timeseries_groups/dmarc`

Retrieves the distribution of emails by DMARC (Domain-based Message Authentication, Reporting and Conformance) validation over time.


## Get email encryption status time series

**GET** `/radar/email/routing/timeseries_groups/encrypted`

Retrieves the distribution of emails by encryption status (encrypted vs. not-encrypted) over time.


## Get email IP version time series

**GET** `/radar/email/routing/timeseries_groups/ip_version`

Retrieves the distribution of emails by IP version over time.


## Get email SPF validation time series

**GET** `/radar/email/routing/timeseries_groups/spf`

Retrieves the distribution of emails by SPF (Sender Policy Framework) validation over time.


## Get email routing time series grouped by dimension

**GET** `/radar/email/routing/timeseries_groups/{dimension}`

Retrieves the distribution of email routing metrics grouped by dimension over time.

