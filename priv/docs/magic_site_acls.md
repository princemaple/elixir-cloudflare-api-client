# Magic Site ACLs

## Create a new Site ACL

**POST** `/accounts/{account_id}/magic/sites/{site_id}/acls`

Creates a new Site ACL.

### Responses

#### 200 Create Site ACL response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "forward_locally": "*boolean*",
  "id": "*string*",
  "lan_1": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "lan_2": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "name": "*string*",
  "protocols": [
    "*string*"
  ],
  "unidirectional": "*boolean*"
}
```

#### 4XX Create Site ACL response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Site ACLs

**GET** `/accounts/{account_id}/magic/sites/{site_id}/acls`

Lists Site ACLs associated with an account.

### Responses

#### 200 List Site ACLs response

> Data is at `body["result"]`

```json
[
  {
    "description": "*string*",
    "forward_locally": "*boolean*",
    "id": "*string*",
    "lan_1": {
      "lan_id": "*string*",
      "lan_name": "*string*",
      "port_ranges": [
        null
      ],
      "ports": [
        null
      ],
      "subnets": [
        null
      ]
    },
    "lan_2": {
      "lan_id": "*string*",
      "lan_name": "*string*",
      "port_ranges": [
        null
      ],
      "ports": [
        null
      ],
      "subnets": [
        null
      ]
    },
    "name": "*string*",
    "protocols": [
      "*string*"
    ],
    "unidirectional": "*boolean*"
  }
]
```

#### 4XX List Site ACLs response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update Site ACL

**PUT** `/accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`

Update a specific Site ACL.

### Responses

#### 200 Update Site ACL response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "forward_locally": "*boolean*",
  "id": "*string*",
  "lan_1": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "lan_2": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "name": "*string*",
  "protocols": [
    "*string*"
  ],
  "unidirectional": "*boolean*"
}
```

#### 4XX Update Site ACL response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Patch Site ACL

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`

Patch a specific Site ACL.

### Responses

#### 200 Patch Site ACL response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "forward_locally": "*boolean*",
  "id": "*string*",
  "lan_1": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "lan_2": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "name": "*string*",
  "protocols": [
    "*string*"
  ],
  "unidirectional": "*boolean*"
}
```

#### 4XX Patch Site ACL response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Site ACL Details

**GET** `/accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`

Get a specific Site ACL.

### Responses

#### 200 Site ACL Details response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "forward_locally": "*boolean*",
  "id": "*string*",
  "lan_1": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "lan_2": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "name": "*string*",
  "protocols": [
    "*string*"
  ],
  "unidirectional": "*boolean*"
}
```

#### 4XX Site ACL Details response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete Site ACL

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}/acls/{acl_id}`

Remove a specific Site ACL.

### Responses

#### 200 Delete Site ACL response

> Data is at `body["result"]`

```json
{
  "description": "*string*",
  "forward_locally": "*boolean*",
  "id": "*string*",
  "lan_1": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "lan_2": {
    "lan_id": "*string*",
    "lan_name": "*string*",
    "port_ranges": [
      "*string*"
    ],
    "ports": [
      "*integer*"
    ],
    "subnets": [
      null
    ]
  },
  "name": "*string*",
  "protocols": [
    "*string*"
  ],
  "unidirectional": "*boolean*"
}
```

#### 4XX Delete Site ACL response failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


