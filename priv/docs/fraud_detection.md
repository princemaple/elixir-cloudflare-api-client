# Fraud Detection

## Update Fraud Detection Settings

**PUT** `/zones/{zone_id}/fraud_detection/settings`

Update Fraud Detection settings for a zone.

Notes on `username_expressions` behavior:
- If omitted or set to null, expressions are not modified.
- If provided as an empty array `[]`, all expressions will be cleared.


### Responses

#### 200 Updated Fraud Detection settings response

> Data is at `body["result"]`

```json
{
  "user_profiles": "*string*",
  "username_expressions": [
    "*string*"
  ]
}
```

#### 4XX Update Fraud Detection settings failure

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



## Get Fraud Detection Settings

**GET** `/zones/{zone_id}/fraud_detection/settings`

Retrieve Fraud Detection settings for a zone.

### Responses

#### 200 Fraud Detection settings response

> Data is at `body["result"]`

```json
{
  "user_profiles": "*string*",
  "username_expressions": [
    "*string*"
  ]
}
```

#### 4XX Fraud Detection settings response failure

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


