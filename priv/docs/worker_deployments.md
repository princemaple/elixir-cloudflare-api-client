# Worker Deployments

## Create Deployment

**POST** `/accounts/{account_id}/workers/scripts/{script_name}/deployments`

Deployments configure how [Worker Versions](https://developers.cloudflare.com/api/operations/worker-versions-list-versions) are deployed to traffic. A deployment can consist of one or two versions of a Worker.

### Responses

#### 200 Create Deployment response.

> Data is at `body["result"]`

```json
{
  "annotations": {
    "workers/message": "*string*",
    "workers/triggered_by": "*string*"
  },
  "author_email": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "source": "*string*",
  "strategy": "*string*",
  "versions": [
    {
      "percentage": "*number*",
      "version_id": "*string*"
    }
  ]
}
```

#### 4XX Create Deployment response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Deployments

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/deployments`

List of Worker Deployments. The first deployment in the list is the latest deployment actively serving traffic.

### Responses

#### 200 List Deployments response.

> Data is at `body["result"]`

```json
{
  "deployments": [
    {
      "annotations": {
        "workers/message": "*string*",
        "workers/triggered_by": "*string*"
      },
      "author_email": "*string*",
      "created_on": "*string*",
      "id": "*string*",
      "source": "*string*",
      "strategy": "*string*",
      "versions": [
        {
          "percentage": null,
          "version_id": null
        }
      ]
    }
  ]
}
```

#### 4XX List Deployments response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Deployment

**GET** `/accounts/{account_id}/workers/scripts/{script_name}/deployments/{deployment_id}`

Get information about a Worker Deployment.

### Responses

#### 200 Get Deployment response.

> Data is at `body["result"]`

```json
{
  "annotations": {
    "workers/message": "*string*",
    "workers/triggered_by": "*string*"
  },
  "author_email": "*string*",
  "created_on": "*string*",
  "id": "*string*",
  "source": "*string*",
  "strategy": "*string*",
  "versions": [
    {
      "percentage": "*number*",
      "version_id": "*string*"
    }
  ]
}
```

#### 4XX Get Deployment response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete Deployment

**DELETE** `/accounts/{account_id}/workers/scripts/{script_name}/deployments/{deployment_id}`

Delete a Worker Deployment. The latest deployment, which is actively serving traffic, cannot be deleted. All other deployments can be deleted.

### Responses

#### 200 Delete Deployment response.

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "success": "*boolean*"
}
```

#### 4XX Delete Deployment response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


