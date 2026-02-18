# IP Address Management Dynamic Advertisement

## Update Prefix Dynamic Advertisement Status

**PATCH** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/status`

Advertise or withdraw the BGP route for a prefix.

**Deprecated:** Prefer the BGP Prefixes endpoints, which additionally allow for advertising and withdrawing 
subnets of an IP prefix.


### Responses

#### 200 Update Prefix Dynamic Advertisement Status response

> Data is at `body["result"]`

```json
{
  "advertised": "*boolean*",
  "advertised_modified_at": "*string*"
}
```

#### 4XX Update Prefix Dynamic Advertisement Status response failure

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



## Get Advertisement Status

**GET** `/accounts/{account_id}/addressing/prefixes/{prefix_id}/bgp/status`

View the current advertisement state for a prefix.

**Deprecated:** Prefer the BGP Prefixes endpoints, which additionally allow for advertising and withdrawing 
subnets of an IP prefix.


### Responses

#### 200 Get Advertisement Status response

> Data is at `body["result"]`

```json
{
  "advertised": "*boolean*",
  "advertised_modified_at": "*string*"
}
```

#### 4XX Get Advertisement Status response failure

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


