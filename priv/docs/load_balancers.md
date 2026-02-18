# Load Balancers

## Create Load Balancer

**POST** `/zones/{zone_id}/load_balancers`

Create a new load balancer.


## List Load Balancers

**GET** `/zones/{zone_id}/load_balancers`

List configured load balancers.


## Update Load Balancer

**PUT** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Update a configured load balancer.


## Patch Load Balancer

**PATCH** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Apply changes to an existing load balancer, overwriting the supplied properties.


## Load Balancer Details

**GET** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Fetch a single configured load balancer.


## Delete Load Balancer

**DELETE** `/zones/{zone_id}/load_balancers/{load_balancer_id}`

Delete a configured load balancer.

