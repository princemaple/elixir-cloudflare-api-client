# Custom Hostname Fallback Origin for a Zone

## Update Fallback Origin for Custom Hostnames

**PUT** `/zones/{zone_id}/custom_hostnames/fallback_origin`



### Responses

#### 200 Update Fallback Origin for Custom Hostnames response

> Data is at `body["result"]`

```json
null
```

#### 4XX Update Fallback Origin for Custom Hostnames response failure

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



## Get Fallback Origin for Custom Hostnames

**GET** `/zones/{zone_id}/custom_hostnames/fallback_origin`



### Responses

#### 200 Get Fallback Origin for Custom Hostnames response

> Data is at `body["result"]`

```json
null
```

#### 4XX Get Fallback Origin for Custom Hostnames response failure

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



## Delete Fallback Origin for Custom Hostnames

**DELETE** `/zones/{zone_id}/custom_hostnames/fallback_origin`



### Responses

#### 200 Delete Fallback Origin for Custom Hostnames response

> Data is at `body["result"]`

```json
null
```

#### 4XX Delete Fallback Origin for Custom Hostnames response failure

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


