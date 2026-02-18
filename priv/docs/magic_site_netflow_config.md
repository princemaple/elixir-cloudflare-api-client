# Magic Site NetFlow Config

## Update NetFlow Configuration

**PUT** `/accounts/{account_id}/magic/sites/{site_id}/netflow_config`

Updates NetFlow configuration for a site (partial update).

### Responses

#### 200 Update NetFlow Configuration response

> Data is at `body["result"]`

```json
{
  "active_timeout": "*integer*",
  "collector_ip": "*string*",
  "collector_port": "*integer*",
  "inactive_timeout": "*integer*",
  "sampling_rate": "*integer*"
}
```

#### 4XX Update NetFlow Configuration response failure

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



## Create NetFlow Configuration

**POST** `/accounts/{account_id}/magic/sites/{site_id}/netflow_config`

Creates a NetFlow configuration for a site.

### Responses

#### 201 Create NetFlow Configuration response

> Data is at `body["result"]`

```json
{
  "active_timeout": "*integer*",
  "collector_ip": "*string*",
  "collector_port": "*integer*",
  "inactive_timeout": "*integer*",
  "sampling_rate": "*integer*"
}
```

#### 4XX Create NetFlow Configuration response failure

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



## Update NetFlow Configuration

**PATCH** `/accounts/{account_id}/magic/sites/{site_id}/netflow_config`

Updates NetFlow configuration for a site.

### Responses

#### 200 Update NetFlow Configuration response

> Data is at `body["result"]`

```json
{
  "active_timeout": "*integer*",
  "collector_ip": "*string*",
  "collector_port": "*integer*",
  "inactive_timeout": "*integer*",
  "sampling_rate": "*integer*"
}
```

#### 4XX Update NetFlow Configuration response failure

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



## NetFlow Configuration Details

**GET** `/accounts/{account_id}/magic/sites/{site_id}/netflow_config`

Get NetFlow configuration for a site.

### Responses

#### 200 Get NetFlow Configuration response

> Data is at `body["result"]`

```json
{
  "active_timeout": "*integer*",
  "collector_ip": "*string*",
  "collector_port": "*integer*",
  "inactive_timeout": "*integer*",
  "sampling_rate": "*integer*"
}
```

#### 4XX Get NetFlow Configuration response failure

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



## Delete NetFlow Configuration

**DELETE** `/accounts/{account_id}/magic/sites/{site_id}/netflow_config`

Remove NetFlow configuration for a site.

### Responses

#### 200 Delete NetFlow Configuration response

> Data is at `body["result"]`

```json
{
  "active_timeout": "*integer*",
  "collector_ip": "*string*",
  "collector_port": "*integer*",
  "inactive_timeout": "*integer*",
  "sampling_rate": "*integer*"
}
```

#### 4XX Delete NetFlow Configuration response failure

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


