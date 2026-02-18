# Page Shield

## Update Page Shield settings

**PUT** `/zones/{zone_id}/page_shield`

Updates Page Shield settings.

### Responses

#### 200 Update Page Shield settings response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update Page Shield settings response failure

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



## Get Page Shield settings

**GET** `/zones/{zone_id}/page_shield`

Fetches the Page Shield settings.

### Responses

#### 200 Get Page Shield settings response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get Page Shield settings response failure

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



## List Page Shield connections

**GET** `/zones/{zone_id}/page_shield/connections`

Lists all connections detected by Page Shield.

### Responses

#### 200 List Page Shield connections response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Page Shield connections response failure

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



## Get a Page Shield connection

**GET** `/zones/{zone_id}/page_shield/connections/{connection_id}`

Fetches a connection detected by Page Shield by connection ID.

### Responses

#### 200 Get a Page Shield connection response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a Page Shield connection response failure

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



## List Page Shield Cookies

**GET** `/zones/{zone_id}/page_shield/cookies`

Lists all cookies collected by Page Shield.

### Responses

#### 200 List Page Shield cookies response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Page Shield cookies response failure

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



## Get a Page Shield cookie

**GET** `/zones/{zone_id}/page_shield/cookies/{cookie_id}`

Fetches a cookie collected by Page Shield by cookie ID.

### Responses

#### 200 Get a Page Shield cookie response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a Page Shield cookie response failure

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



## Create a Page Shield policy

**POST** `/zones/{zone_id}/page_shield/policies`

Create a Page Shield policy.

### Responses

#### 200 Create a Page Shield policy response

> Data is at `body["result"]`

```json
null
```

#### 4XX Create a Page Shield policy response failure

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



## List Page Shield policies

**GET** `/zones/{zone_id}/page_shield/policies`

Lists all Page Shield policies.

### Responses

#### 200 List Page Shield policies response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Page Shield policies response failure

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



## Update a Page Shield policy

**PUT** `/zones/{zone_id}/page_shield/policies/{policy_id}`

Update a Page Shield policy by ID.

### Responses

#### 200 Update a Page Shield policy response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update a Page Shield policy response failure

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



## Get a Page Shield policy

**GET** `/zones/{zone_id}/page_shield/policies/{policy_id}`

Fetches a Page Shield policy by ID.

### Responses

#### 200 Get a Page Shield policy response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a Page Shield policy response failure

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



## Delete a Page Shield policy

**DELETE** `/zones/{zone_id}/page_shield/policies/{policy_id}`

Delete a Page Shield policy by ID.

### Responses

#### 204 Delete a Page Shield policy response

> Data is at `body["result"]`

```json

```

#### 4XX Delete a Page Shield policy response failure

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



## List Page Shield scripts

**GET** `/zones/{zone_id}/page_shield/scripts`

Lists all scripts detected by Page Shield.

### Responses

#### 200 List Page Shield scripts response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List Page Shield scripts response failure

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



## Get a Page Shield script

**GET** `/zones/{zone_id}/page_shield/scripts/{script_id}`

Fetches a script detected by Page Shield by script ID.

### Responses

#### 200 Get a Page Shield script response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get a Page Shield script response failure

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


