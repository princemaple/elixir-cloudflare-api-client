# DLP Settings

## Fetch limits associated with DLP for account

**GET** `/accounts/{account_id}/dlp/limits`



### Responses

#### 200 Limits retrieved successfully.

> Data is at `body["result"]`

```json
{
  "max_dataset_cells": "*integer*"
}
```

#### 4XX Limits get failed.

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



## Validate a DLP regex pattern

**POST** `/accounts/{account_id}/dlp/patterns/validate`

Validates whether this pattern is a valid regular expression. Rejects it if
the regular expression is too complex or can match an unbounded-length
string. The regex will be rejected if it uses `*` or `+`. Bound the maximum
number of characters that can be matched using a range, e.g. `{1,100}`.

### Responses

#### 200 Validation response.

> Data is at `body["result"]`

```json
{
  "valid": "*boolean*"
}
```

#### 4XX Failed to validate.

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



## Set payload log settings

**PUT** `/accounts/{account_id}/dlp/payload_log`



### Responses

#### 200 Payload log settings.

> Data is at `body["result"]`

```json
{
  "masking_level": "*string*",
  "public_key": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Failed to set payload log settings.

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



## Get payload log settings

**GET** `/accounts/{account_id}/dlp/payload_log`



### Responses

#### 200 Payload log settings.

> Data is at `body["result"]`

```json
{
  "masking_level": "*string*",
  "public_key": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Failed to get payload log settings.

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


