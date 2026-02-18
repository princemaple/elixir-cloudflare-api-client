# Applications

## Create application

**POST** `/accounts/{accountId}/resource-library/applications`

Create application.

### Responses

#### 201 Created.

> Data is at `body["result"]`

```json
{
  "application_source": "*string*",
  "application_type": "*string*",
  "application_type_description": "*string*",
  "created_at": "*string*",
  "hostnames": [
    "*string*"
  ],
  "human_id": "*string*",
  "id": "*string*",
  "ip_subnets": [
    "*string*"
  ],
  "name": "*string*",
  "port_protocols": [
    "*string*"
  ],
  "support_domains": [
    "*string*"
  ],
  "updated_at": "*string*",
  "version": "*string*"
}
```

#### 4XX Create application response failure.

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



## Get  applications

**GET** `/accounts/{accountId}/resource-library/applications`

Get applications with different filters.

### Responses

#### 200 Get the application response.

> Data is at `body["result"]`

```json
[
  {
    "application_source": "*string*",
    "application_type": "*string*",
    "application_type_description": "*string*",
    "created_at": "*string*",
    "hostnames": [
      "*string*"
    ],
    "human_id": "*string*",
    "id": "*string*",
    "ip_subnets": [
      "*string*"
    ],
    "name": "*string*",
    "port_protocols": [
      "*string*"
    ],
    "support_domains": [
      "*string*"
    ],
    "updated_at": "*string*",
    "version": "*string*"
  }
]
```

#### 4XX Get application response failure.

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update application version

**PATCH** `/accounts/{accountId}/resource-library/applications/{id}`

Update application version.

### Responses

#### 200 Update the application response.

> Data is at `body["result"]`

```json
{
  "application_source": "*string*",
  "application_type": "*string*",
  "application_type_description": "*string*",
  "created_at": "*string*",
  "hostnames": [
    "*string*"
  ],
  "human_id": "*string*",
  "id": "*string*",
  "ip_subnets": [
    "*string*"
  ],
  "name": "*string*",
  "port_protocols": [
    "*string*"
  ],
  "support_domains": [
    "*string*"
  ],
  "updated_at": "*string*",
  "version": "*string*"
}
```

#### 4XX Update application version response failure.

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



## Get application By Id

**GET** `/accounts/{accountId}/resource-library/applications/{id}`

Get application by ID.

### Responses

#### 200 Get the application response.

> Data is at `body["result"]`

```json
{
  "application_source": "*string*",
  "application_type": "*string*",
  "application_type_description": "*string*",
  "created_at": "*string*",
  "hostnames": [
    "*string*"
  ],
  "human_id": "*string*",
  "id": "*string*",
  "ip_subnets": [
    "*string*"
  ],
  "name": "*string*",
  "port_protocols": [
    "*string*"
  ],
  "support_domains": [
    "*string*"
  ],
  "updated_at": "*string*",
  "version": "*string*"
}
```

#### 4XX Get application by id response failure.

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


