# Account Load Balancer Monitors

## Create Monitor

**POST** `/accounts/{account_id}/load_balancers/monitors`

Create a configured monitor.


## List Monitors

**GET** `/accounts/{account_id}/load_balancers/monitors`

List configured monitors for an account.


## Update Monitor

**PUT** `/accounts/{account_id}/load_balancers/monitors/{monitor_id}`

Modify a configured monitor.


## Patch Monitor

**PATCH** `/accounts/{account_id}/load_balancers/monitors/{monitor_id}`

Apply changes to an existing monitor, overwriting the supplied properties.


## Monitor Details

**GET** `/accounts/{account_id}/load_balancers/monitors/{monitor_id}`

List a single configured monitor for an account.


## Delete Monitor

**DELETE** `/accounts/{account_id}/load_balancers/monitors/{monitor_id}`

Delete a configured monitor.


## Preview Monitor

**POST** `/accounts/{account_id}/load_balancers/monitors/{monitor_id}/preview`

Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.


## List Monitor References

**GET** `/accounts/{account_id}/load_balancers/monitors/{monitor_id}/references`

Get the list of resources that reference the provided monitor.


## Preview Result

**GET** `/accounts/{account_id}/load_balancers/preview/{preview_id}`

Get the result of a previous preview operation using the provided preview_id.

