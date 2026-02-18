# Account Load Balancer Monitor Groups

## Create Monitor Group

**POST** `/accounts/{account_id}/load_balancers/monitor_groups`

Create a new monitor group.


## List Monitor Groups

**GET** `/accounts/{account_id}/load_balancers/monitor_groups`

List configured monitor groups.


## Update Monitor Group

**PUT** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Modify a configured monitor group.


## Patch Monitor Group

**PATCH** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Apply changes to an existing monitor group, overwriting the supplied properties.


## Monitor Group Details

**GET** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Fetch a single configured monitor group.


## Delete Monitor Group

**DELETE** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`

Delete a configured monitor group.


## List Monitor Group References

**GET** `/accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}/references`

Get the list of resources that reference the provided monitor group.

