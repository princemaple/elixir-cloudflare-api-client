# Worker Tail Logs

## Start Tail

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/tails`

Starts a tail that receives logs and exception from a Worker.


## List Tails

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/tails`

Get list of tails currently deployed on a Worker.


## Delete Tail

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/tails/{id}`

Deletes a tail from a Worker.

