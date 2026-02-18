# DEX Synthetic Application Monitoring

## List Cloudflare colos

**GET** `/accounts/{account_id}/dex/colos`

List Cloudflare colos that account's devices were connected to during a time period, sorted by usage starting from the most used colo. Colos without traffic are also returned and sorted alphabetically.


## Get the live status of a latest device

**GET** `/accounts/{account_id}/dex/devices/{device_id}/fleet-status/live`

Get the live status of a latest device given device_id from the device_state table


## List fleet status devices

**GET** `/accounts/{account_id}/dex/fleet-status/devices`

List details for devices using WARP


## List fleet status details by dimension

**GET** `/accounts/{account_id}/dex/fleet-status/live`

List details for live (up to 60 minutes) devices using WARP


## List fleet status aggregate details by dimension

**GET** `/accounts/{account_id}/dex/fleet-status/over-time`

List details for devices using WARP, up to 7 days


## Get details and aggregate metrics for an http test

**GET** `/accounts/{account_id}/dex/http-tests/{test_id}`

Get test details and aggregate performance metrics for an http test for a given time period between 1 hour and 7 days.


## Get percentiles for an http test

**GET** `/accounts/{account_id}/dex/http-tests/{test_id}/percentiles`

Get percentiles for an http test for a given time period between 1 hour and 7 days.


## List DEX test analytics

**GET** `/accounts/{account_id}/dex/tests/overview`

List DEX tests with overview metrics


## Get count of devices targeted

**GET** `/accounts/{account_id}/dex/tests/unique-devices`

Returns unique count of devices that have run synthetic application monitoring tests in the past 7 days.


## Get details for a specific traceroute test run

**GET** `/accounts/{account_id}/dex/traceroute-test-results/{test_result_id}/network-path`

Get a breakdown of hops and performance metrics for a specific traceroute test run


## Get details and aggregate metrics for a traceroute test

**GET** `/accounts/{account_id}/dex/traceroute-tests/{test_id}`

Get test details and aggregate performance metrics for an traceroute test for a given time period between 1 hour and 7 days.


## Get network path breakdown for a traceroute test

**GET** `/accounts/{account_id}/dex/traceroute-tests/{test_id}/network-path`

Get a breakdown of metrics by hop for individual traceroute test runs


## Get percentiles for a traceroute test

**GET** `/accounts/{account_id}/dex/traceroute-tests/{test_id}/percentiles`

Get percentiles for a traceroute test for a given time period between 1 hour and 7 days.

