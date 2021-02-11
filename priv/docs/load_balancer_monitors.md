## List Monitors

**Permission needed:** `None`

Available in:



`GET` List configured monitors for a user

> GET user/load_balancers/monitors


## Create Monitor

**Permission needed:** `None`

Available in:



`POST` Create a configured monitor

> POST user/load_balancers/monitors


## Monitor Details

**Permission needed:** `None`

Available in:



`GET` List a single configured monitor for a user

> GET user/load_balancers/monitors/:identifier


## Update Monitor

**Permission needed:** `None`

Available in:



`PUT` Modify a configured monitor

> PUT user/load_balancers/monitors/:identifier


## Patch Monitor

**Permission needed:** `None`

Available in:



`PATCH` Apply changes to an existing monitor, overwriting the supplied properties.

> PATCH user/load_balancers/monitors/:identifier


## Delete Monitor

**Permission needed:** `None`

Available in:



`DELETE` Delete a configured monitor

> DELETE user/load_balancers/monitors/:identifier


## Preview Monitor

**Permission needed:** `None`

Available in:



`POST` Preview pools using the specified monitor with provided monitor details. The returned preview_id can be used in the preview endpoint to retrieve the results.

> POST user/load_balancers/monitors/:identifier/preview


## Preview Result

**Permission needed:** `None`

Available in:



`GET` Get the result of a previous preview operation using the provided preview_id

> GET user/load_balancers/preview/:preview_id


## List Monitor References

**Permission needed:** `None`

Available in:



`GET` Get the list of resources that reference the provided monitor

> GET user/load_balancers/monitors/:identifier/references
