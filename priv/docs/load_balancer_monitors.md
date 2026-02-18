# Load Balancer Monitors

## Create Monitor

**POST** `/user/load_balancers/monitors`

Create a configured monitor.


## List Monitors

**GET** `/user/load_balancers/monitors`

List configured monitors for a user.


## Update Monitor

**PUT** `/user/load_balancers/monitors/{monitor_id}`

Modify a configured monitor.


## Patch Monitor

**PATCH** `/user/load_balancers/monitors/{monitor_id}`

Apply changes to an existing monitor, overwriting the supplied properties.


## Monitor Details

**GET** `/user/load_balancers/monitors/{monitor_id}`

List a single configured monitor for a user.


## Delete Monitor

**DELETE** `/user/load_balancers/monitors/{monitor_id}`

Delete a configured monitor.


## Preview Monitor

**POST** `/user/load_balancers/monitors/{monitor_id}/preview`

Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.


## List Monitor References

**GET** `/user/load_balancers/monitors/{monitor_id}/references`

Get the list of resources that reference the provided monitor.


## Preview Result

**GET** `/user/load_balancers/preview/{preview_id}`

Get the result of a previous preview operation using the provided preview_id.

