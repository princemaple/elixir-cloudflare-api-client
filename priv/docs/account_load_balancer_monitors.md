## Account Load Balancer Monitors

Account-level Monitor configurations. Monitors define whether we check over HTTP, HTTPS or TCP, the status code(s) we look for, the interval at which we check, timeouts and response body matching.

### List Monitors

**Permission needed:** `None`

Available in:



`GET` List configured monitors for an account

> GET accounts/:account_identifier/load_balancers/monitors


### Create Monitor

**Permission needed:** `None`

Available in:



`POST` Create a configured monitor

> POST accounts/:account_identifier/load_balancers/monitors


### Monitor Details

**Permission needed:** `None`

Available in:



`GET` List a single configured monitor for an account

> GET accounts/:account_identifier/load_balancers/monitors/:identifier


### Update Monitor

**Permission needed:** `None`

Available in:



`PUT` Modify a configured monitor

> PUT accounts/:account_identifier/load_balancers/monitors/:identifier


### Patch Monitor

**Permission needed:** `None`

Available in:



`PATCH` Apply changes to an existing monitor, overwriting the supplied properties.

> PATCH accounts/:account_identifier/load_balancers/monitors/:identifier


### Delete Monitor

**Permission needed:** `None`

Available in:



`DELETE` Delete a configured monitor

> DELETE accounts/:account_identifier/load_balancers/monitors/:identifier


### Preview Monitor

**Permission needed:** `None`

Available in:



`POST` Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.

> POST accounts/:account_identifier/load_balancers/monitors/:identifier/preview


### Preview Result

**Permission needed:** `None`

Available in:



`GET` Get the result of a previous preview operation using the provided preview_id

> GET accounts/:account_identifier/load_balancers/preview/:preview_id


### List Monitor References

**Permission needed:** `None`

Available in:



`GET` Get the list of resources that reference the provided monitor

> GET accounts/:account_identifier/load_balancers/monitors/:identifier/references

