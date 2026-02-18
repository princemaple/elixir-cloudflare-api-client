# Pages Deployment

## Create deployment

**POST** `/accounts/{account_id}/pages/projects/{project_name}/deployments`

Start a new deployment from production. The repository and account must have already been authorized on the Cloudflare Pages dashboard.


## Get deployments

**GET** `/accounts/{account_id}/pages/projects/{project_name}/deployments`

Fetch a list of project deployments.


## Get deployment info

**GET** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}`

Fetch information about a deployment.


## Delete deployment

**DELETE** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}`

Delete a deployment.


## Get deployment logs

**GET** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}/history/logs`

Fetch deployment logs for a project.


## Retry deployment

**POST** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}/retry`

Retry a previous deployment.


## Rollback deployment

**POST** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}/rollback`

Rollback the production deployment to a previous deployment. You can only rollback to succesful builds on production.

