# Access authentication logs

## Get Access authentication logs

**GET** `/accounts/{account_id}/access/logs/access_requests`

Gets a list of Access authentication audit logs for an account.

### Responses

#### 200 Get Access authentication logs response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "allowed": "*boolean*",
    "app_domain": "*string*",
    "app_uid": "*string*",
    "connection": "*string*",
    "created_at": "*string*",
    "ip_address": "*string*",
    "ray_id": "*string*",
    "user_email": "*string*"
  }
]
```

#### 4XX Get Access authentication logs response failure

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


