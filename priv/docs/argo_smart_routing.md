# Argo Smart Routing

## Patch Argo Smart Routing setting

**PATCH** `/zones/{zone_id}/argo/smart_routing`

Configures the value of the Argo Smart Routing enablement setting.

### Responses

#### 200 Patch Argo Smart Routing enablement setting response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Patch Argo Smart Routing enablement setting failure.

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



## Get Argo Smart Routing setting

**GET** `/zones/{zone_id}/argo/smart_routing`

Retrieves the value of Argo Smart Routing enablement setting.

### Responses

#### 200 Get Argo Smart Routing enablement setting response.

> Data is at `body["result"]`

```json
{
  "editable": "*boolean*",
  "id": "*string*",
  "modified_on": "*string*",
  "value": "*string*"
}
```

#### 4XX Get Argo Smart Routing enablement setting failure.

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


