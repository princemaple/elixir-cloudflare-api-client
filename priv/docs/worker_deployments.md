# Worker Deployments

## Create Deployment

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/deployments`

Deployments configure how [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions) are deployed to traffic. A deployment can consist of one or two versions of a Worker.


## List Deployments

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/deployments`

List of Worker Deployments. The first deployment in the list is the latest deployment actively serving traffic.


## Get Deployment

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/deployments/{deployment_id}`

Get information about a Worker Deployment.


## Delete Deployment

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/deployments/{deployment_id}`

Delete a Worker Deployment. The latest deployment, which is actively serving traffic, cannot be deleted. All other deployments can be deleted.

