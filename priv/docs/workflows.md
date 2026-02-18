# Workflows

## List all Workflows

**GET** `/accounts/{account_id}/workflows`




## Create/modify Workflow

**PUT** `/accounts/{account_id}/workflows/{workflow_name}`




## Get Workflow details

**GET** `/accounts/{account_id}/workflows/{workflow_name}`




## Deletes a Workflow

**DELETE** `/accounts/{account_id}/workflows/{workflow_name}`

Deletes a Workflow. This only deletes the Workflow and does not delete or modify any Worker associated to this Workflow or bounded to it.


## Create a new workflow instance

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances`




## List of workflow instances

**GET** `/accounts/{account_id}/workflows/{workflow_name}/instances`




## Batch create new Workflow instances

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances/batch`




## Batch terminate instances of a workflow

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances/batch/terminate`




## Get status of the job responsible for terminate all instances of a workflow

**GET** `/accounts/{account_id}/workflows/{workflow_name}/instances/terminate`




## Get logs and status from instance

**GET** `/accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}`




## Send event to instance

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/events/{event_type}`




## Change status of instance

**PATCH** `/accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/status`




## List deployed Workflow versions

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions`




## Get Workflow version details

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}`




## Get Workflow version dag

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/dag`




## Get Workflow version graph

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/graph`



