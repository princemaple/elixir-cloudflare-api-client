# Magic Site App Configs

## Create a new App Config

**POST** `/accounts/{account_id}/magic/sites/{site_id}/app_configs`

Creates a new App Config for a site

### Responses

#### 201 Create Site App Config response

> Data is at `body["result"]`

```json
null
```

#### 4XX Create Site App Config response failure

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



## List App Configs

**GET** `/accounts/{account_id}/magic/sites/{site_id}/app_configs`

Lists App Configs associated with a site.

### Responses

#### 200 List App Configs response

> Data is at `body["result"]`

```json
[
  null
]
```

#### 4XX List App Configs response failure

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



## Update an App Config

**PUT** `/accounts/{account_id}/magic/sites/{site_id}/app_configs/{app_config_id}`

Updates an App Config for a site

### Responses

#### 200 Update Site App Config response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update Site App Config response failure

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



## Update an App Config

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}/app_configs/{app_config_id}`

Updates an App Config for a site

### Responses

#### 200 Update Site App Config response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update Site App Config response failure

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



## Delete App Config

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}/app_configs/{app_config_id}`

Deletes specific App Config associated with a site.

### Responses

#### 200 Delete App Config response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete App Config response failure

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


