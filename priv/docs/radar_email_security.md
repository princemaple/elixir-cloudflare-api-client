# Radar Email Security

## Get email ARC validation summary

**GET** `/radar/email/security/summary/arc`

Retrieves the distribution of emails by ARC (Authenticated Received Chain) validation.


## Get email DKIM validation summary

**GET** `/radar/email/security/summary/dkim`

Retrieves the distribution of emails by DKIM (DomainKeys Identified Mail) validation.


## Get email DMARC validation summary

**GET** `/radar/email/security/summary/dmarc`

Retrieves the distribution of emails by DMARC (Domain-based Message Authentication, Reporting and Conformance) validation.


## Get email malicious classification summary

**GET** `/radar/email/security/summary/malicious`

Retrieves the distribution of emails by malicious classification.


## Get email spam classification summary

**GET** `/radar/email/security/summary/spam`

Retrieves the proportion of emails by spam classification (spam vs. non-spam).


## Get email SPF validation summary

**GET** `/radar/email/security/summary/spf`

Retrieves the distribution of emails by SPF (Sender Policy Framework) validation.


## Get email spoof classification summary

**GET** `/radar/email/security/summary/spoof`

Retrieves the proportion of emails by spoof classification (spoof vs. non-spoof).


## Get email threat category summary

**GET** `/radar/email/security/summary/threat_category`

Retrieves the distribution of emails by threat categories.


## Get email TLS version summary

**GET** `/radar/email/security/summary/tls_version`

Retrieves the distribution of emails by TLS version.


## Get email security summary by dimension

**GET** `/radar/email/security/summary/{dimension}`

Retrieves the distribution of email security metrics by the specified dimension.


## Get email ARC validation time series

**GET** `/radar/email/security/timeseries_groups/arc`

Retrieves the distribution of emails by ARC (Authenticated Received Chain) validation over time.


## Get email DKIM validation time series

**GET** `/radar/email/security/timeseries_groups/dkim`

Retrieves the distribution of emails by DKIM (DomainKeys Identified Mail) validation over time.


## Get email DMARC validation time series

**GET** `/radar/email/security/timeseries_groups/dmarc`

Retrieves the distribution of emails by DMARC (Domain-based Message Authentication, Reporting and Conformance) validation over time.


## Get email malicious classification time series

**GET** `/radar/email/security/timeseries_groups/malicious`

Retrieves the distribution of emails by malicious classification over time.


## Get email spam classification time series

**GET** `/radar/email/security/timeseries_groups/spam`

Retrieves the distribution of emails by spam classification (spam vs. non-spam) over time.


## Get email SPF validation time series

**GET** `/radar/email/security/timeseries_groups/spf`

Retrieves the distribution of emails by SPF (Sender Policy Framework) validation over time.


## Get email spoof classification time series

**GET** `/radar/email/security/timeseries_groups/spoof`

Retrieves the distribution of emails by spoof classification (spoof vs. non-spoof) over time.


## Get email threat category time series

**GET** `/radar/email/security/timeseries_groups/threat_category`

Retrieves the distribution of emails by threat category over time.


## Get email TLS version time series

**GET** `/radar/email/security/timeseries_groups/tls_version`

Retrieves the distribution of emails by TLS version over time.


## Get email security time series grouped by dimension

**GET** `/radar/email/security/timeseries_groups/{dimension}`

Retrieves the distribution of email security metrics grouped by dimension over time.


## Get top TLDs by email message volume

**GET** `/radar/email/security/top/tlds`

Retrieves the top TLDs by number of email messages.


## Get top TLDs by email malicious classification

**GET** `/radar/email/security/top/tlds/malicious/{malicious}`

Retrieves the top TLDs by emails classified as malicious or not.


## Get top TLDs by email spam classification

**GET** `/radar/email/security/top/tlds/spam/{spam}`

Retrieves the top TLDs by emails classified as spam or not.


## Get top TLDs by email spoof classification

**GET** `/radar/email/security/top/tlds/spoof/{spoof}`

Retrieves the top TLDs by emails classified as spoof or not.

