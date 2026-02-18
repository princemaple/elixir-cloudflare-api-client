# Observatory

## Get quota and availability

**GET** `/zones/{zone_id}/speed_api/availabilities`

Retrieves quota for all plans, as well as the current zone quota.


## List tested webpages

**GET** `/zones/{zone_id}/speed_api/pages`

Lists all webpages which have been tested.


## Start page test

**POST** `/zones/{zone_id}/speed_api/pages/{url}/tests`

Starts a test for a specific webpage, in a specific region.


## List page test history

**GET** `/zones/{zone_id}/speed_api/pages/{url}/tests`

Test history (list of tests) for a specific webpage.


## Delete all page tests

**DELETE** `/zones/{zone_id}/speed_api/pages/{url}/tests`

Deletes all tests for a specific webpage from a specific region. Deleted tests are still counted as part of the quota.


## Get a page test result

**GET** `/zones/{zone_id}/speed_api/pages/{url}/tests/{test_id}`

Retrieves the result of a specific test.


## List core web vital metrics trend

**GET** `/zones/{zone_id}/speed_api/pages/{url}/trend`

Lists the core web vital metrics trend over time for a specific page.


## Create scheduled page test

**POST** `/zones/{zone_id}/speed_api/schedule/{url}`

Creates a scheduled test for a page.


## Get a page test schedule

**GET** `/zones/{zone_id}/speed_api/schedule/{url}`

Retrieves the test schedule for a page in a specific region.


## Delete scheduled page test

**DELETE** `/zones/{zone_id}/speed_api/schedule/{url}`

Deletes a scheduled test for a page.

