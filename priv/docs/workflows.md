# Workflows

## List all Workflows

**GET** `/accounts/{account_id}/workflows`



### Responses

#### 200 List of all Workflows belonging to a account.

> Data is at `body["result"]`

```json
[
  {
    "class_name": "*string*",
    "created_on": "*string*",
    "id": "*string*",
    "instances": {
      "complete": "*number*",
      "errored": "*number*",
      "paused": "*number*",
      "queued": "*number*",
      "running": "*number*",
      "terminated": "*number*",
      "waiting": "*number*",
      "waitingForPause": "*number*"
    },
    "modified_on": "*string*",
    "name": "*string*",
    "script_name": "*string*",
    "triggered_on": "*string*"
  }
]
```

#### 400 Input Validation Error.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Create/modify Workflow

**PUT** `/accounts/{account_id}/workflows/{workflow_name}`



### Responses

#### 200 Create/modify a Workflow based on a deployed script with an existing `WorkflowEntrypoint` class. Must be done after deploying the corresponding script.

> Data is at `body["result"]`

```json
{
  "class_name": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "is_deleted": "*number*",
  "modified_on": "*string*",
  "name": "*string*",
  "script_name": "*string*",
  "terminator_running": "*number*",
  "triggered_on": "*string*",
  "version_id": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Workflow details

**GET** `/accounts/{account_id}/workflows/{workflow_name}`



### Responses

#### 200 Get Workflow details.

> Data is at `body["result"]`

```json
{
  "class_name": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "instances": {
    "complete": "*number*",
    "errored": "*number*",
    "paused": "*number*",
    "queued": "*number*",
    "running": "*number*",
    "terminated": "*number*",
    "waiting": "*number*",
    "waitingForPause": "*number*"
  },
  "modified_on": "*string*",
  "name": "*string*",
  "script_name": "*string*",
  "triggered_on": "*string*"
}
```

#### 400 Workflow has no deployed versions.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Deletes a Workflow

**DELETE** `/accounts/{account_id}/workflows/{workflow_name}`

Deletes a Workflow. This only deletes the Workflow and does not delete or modify any Worker associated to this Workflow or bounded to it.

### Responses

#### 200 Deletes a Workflow.

> Data is at `body["result"]`

```json
{
  "status": "*string*",
  "success": "*boolean*"
}
```

#### 400 Workflow has no deployed versions.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Create a new workflow instance

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances`



### Responses

#### 200 Create workflow instance. Body is a JSON parsable string that it's passed into the new instance as the event payload.

> Data is at `body["result"]`

```json
{
  "id": "*string*",
  "status": "*string*",
  "version_id": "*string*",
  "workflow_id": "*string*"
}
```

#### 400 Provided Workflow ID is not valid.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow Name not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List of workflow instances

**GET** `/accounts/{account_id}/workflows/{workflow_name}/instances`



### Responses

#### 200 List of workflow instances.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "ended_on": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "started_on": "*string*",
    "status": "*string*",
    "version_id": "*string*",
    "workflow_id": "*string*"
  }
]
```

#### 400 Input Validation Error.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow Name not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Batch create new Workflow instances

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances/batch`



### Responses

#### 200 Batch create workflow instances. Body is a JSON list that contain all payloads and ids that are passed into the new instance as the event payload.

> Data is at `body["result"]`

```json
[
  {
    "id": "*string*",
    "status": "*string*",
    "version_id": "*string*",
    "workflow_id": "*string*"
  }
]
```

#### 400 Provided Workflow ID is not valid.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow Name not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Batch terminate instances of a workflow

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances/batch/terminate`



### Responses

#### 200 Batch terminate instances of a workflow, via a async job. Body is a JSON list that contain the ids of the instances to terminate.

> Data is at `body["result"]`

```json
{
  "instancesTerminated": "*number*",
  "status": "*string*"
}
```

#### 400 Provided Workflow ID is not valid.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow Name not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get status of the job responsible for terminate all instances of a workflow

**GET** `/accounts/{account_id}/workflows/{workflow_name}/instances/terminate`



### Responses

#### 200 Get status of the job responsible for terminate all instances of a workflow.

> Data is at `body["result"]`

```json
{
  "status": "*string*"
}
```

#### 400 Input Validation Error.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow Name not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get logs and status from instance

**GET** `/accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}`



### Responses

#### 200 Get all logs and status from the instance.

> Data is at `body["result"]`

```json
{
  "end": "*string*",
  "error": {
    "message": "*string*",
    "name": "*string*"
  },
  "output": null,
  "params": {},
  "queued": "*string*",
  "start": "*string*",
  "status": "*string*",
  "steps": [
    null
  ],
  "success": "*boolean*",
  "trigger": {
    "source": "*string*"
  },
  "versionId": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Instance not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Send event to instance

**POST** `/accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/events/{event_type}`



### Responses

#### 200 Send an event to an instance.

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Workflow not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Change status of instance

**PATCH** `/accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/status`



### Responses

#### 200 Change status of instance - it can be paused, resumed or terminated.

> Data is at `body["result"]`

```json
{
  "status": "*string*",
  "timestamp": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Instance not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 409 Instance not in a restartable state.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List deployed Workflow versions

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions`



### Responses

#### 200 List deployed workflow versions.

> Data is at `body["result"]`

```json
[
  {
    "class_name": "*string*",
    "created_on": "*string*",
    "has_dag": "*boolean*",
    "id": "*string*",
    "modified_on": "*string*",
    "workflow_id": "*string*"
  }
]
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Workflow version details

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}`



### Responses

#### 200 Get specific version details.

> Data is at `body["result"]`

```json
{
  "class_name": "*string*",
  "created_on": "*string*",
  "has_dag": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "workflow_id": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Version not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Workflow version dag

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/dag`



### Responses

#### 200 Get the parsed DAG for a specific workflow version.

> Data is at `body["result"]`

```json
{
  "class_name": "*string*",
  "created_on": "*string*",
  "dag": {},
  "id": "*string*",
  "modified_on": "*string*",
  "workflow_id": "*string*"
}
```

#### 404 Version not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Workflow version graph

**GET** `/accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/graph`



### Responses

#### 200 Get the parsed graph for a specific workflow version.

> Data is at `body["result"]`

```json
{
  "class_name": "*string*",
  "created_on": "*string*",
  "dag": {},
  "id": "*string*",
  "modified_on": "*string*",
  "workflow_id": "*string*"
}
```

#### 404 Version not found.

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "result": {},
  "success": "*boolean*"
}
```


