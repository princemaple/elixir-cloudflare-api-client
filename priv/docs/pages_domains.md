# Pages Domains

## Add domain

**POST** `/accounts/{account_id}/pages/projects/{project_name}/domains`

Add a new domain for the Pages project.

### Responses

#### 200 Add domain response.

> Data is at `body["result"]`

```json
{
  "certificate_authority": "*string*",
  "created_on": "*string*",
  "domain_id": "*string*",
  "id": "*string*",
  "name": "*string*",
  "status": "*string*",
  "validation_data": {
    "error_message": "*string*",
    "method": "*string*",
    "status": "*string*",
    "txt_name": "*string*",
    "txt_value": "*string*"
  },
  "verification_data": {
    "error_message": "*string*",
    "status": "*string*"
  },
  "zone_tag": "*string*"
}
```

#### 4XX Add domain response failure.

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



## Get domains

**GET** `/accounts/{account_id}/pages/projects/{project_name}/domains`

Fetch a list of all domains associated with a Pages project.

### Responses

#### 200 Get domains response.

> Data is at `body["result"]`

```json
[
  {
    "certificate_authority": "*string*",
    "created_on": "*string*",
    "domain_id": "*string*",
    "id": "*string*",
    "name": "*string*",
    "status": "*string*",
    "validation_data": {
      "error_message": "*string*",
      "method": "*string*",
      "status": "*string*",
      "txt_name": "*string*",
      "txt_value": "*string*"
    },
    "verification_data": {
      "error_message": "*string*",
      "status": "*string*"
    },
    "zone_tag": "*string*"
  }
]
```

#### 4XX Get domains response failure.

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



## Patch domain

**PATCH** `/accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`

Retry the validation status of a single domain.

### Responses

#### 200 Patch domain response.

> Data is at `body["result"]`

```json
{
  "certificate_authority": "*string*",
  "created_on": "*string*",
  "domain_id": "*string*",
  "id": "*string*",
  "name": "*string*",
  "status": "*string*",
  "validation_data": {
    "error_message": "*string*",
    "method": "*string*",
    "status": "*string*",
    "txt_name": "*string*",
    "txt_value": "*string*"
  },
  "verification_data": {
    "error_message": "*string*",
    "status": "*string*"
  },
  "zone_tag": "*string*"
}
```

#### 4XX Patch domain response failure.

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



## Get domain

**GET** `/accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`

Fetch a single domain.

### Responses

#### 200 Get domain response.

> Data is at `body["result"]`

```json
{
  "certificate_authority": "*string*",
  "created_on": "*string*",
  "domain_id": "*string*",
  "id": "*string*",
  "name": "*string*",
  "status": "*string*",
  "validation_data": {
    "error_message": "*string*",
    "method": "*string*",
    "status": "*string*",
    "txt_name": "*string*",
    "txt_value": "*string*"
  },
  "verification_data": {
    "error_message": "*string*",
    "status": "*string*"
  },
  "zone_tag": "*string*"
}
```

#### 4XX Get domain response failure.

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



## Delete domain

**DELETE** `/accounts/{account_id}/pages/projects/{project_name}/domains/{domain_name}`

Delete a Pages project's domain.

### Responses

#### 200 Delete domain response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete domain response failure.

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


