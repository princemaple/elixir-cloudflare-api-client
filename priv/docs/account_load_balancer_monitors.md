# Account Load Balancer Monitors

Account-level Monitor configurations. Monitors define whether we check over HTTP, HTTPS or TCP, the status code(s) we look for, the interval at which we check, timeouts and response body matching.

## List Monitors

`GET` List configured monitors for an account

> GET accounts/:account_identifier/load_balancers/monitors

**Permission needed:** `None`

Available in:




## Create Monitor

`POST` Create a configured monitor

> POST accounts/:account_identifier/load_balancers/monitors

**Permission needed:** `None`

Available in:




## Monitor Details

`GET` List a single configured monitor for an account

> GET accounts/:account_identifier/load_balancers/monitors/:identifier

**Permission needed:** `None`

Available in:




## Update Monitor

`PUT` Modify a configured monitor

> PUT accounts/:account_identifier/load_balancers/monitors/:identifier

**Permission needed:** `None`

Available in:




## Patch Monitor

`PATCH` Apply changes to an existing monitor, overwriting the supplied properties.

> PATCH accounts/:account_identifier/load_balancers/monitors/:identifier

**Permission needed:** `None`

Available in:




## Delete Monitor

`DELETE` Delete a configured monitor

> DELETE accounts/:account_identifier/load_balancers/monitors/:identifier

**Permission needed:** `None`

Available in:




## Preview Monitor

`POST` Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.

> POST accounts/:account_identifier/load_balancers/monitors/:identifier/preview

**Permission needed:** `None`

Available in:




## Preview Result

`GET` Get the result of a previous preview operation using the provided preview_id

> GET accounts/:account_identifier/load_balancers/preview/:preview_id

**Permission needed:** `None`

Available in:




## List Monitor References

`GET` Get the list of resources that reference the provided monitor

> GET accounts/:account_identifier/load_balancers/monitors/:identifier/references

**Permission needed:** `None`

Available in:



