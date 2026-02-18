# Access SCIM update logs

## List Access SCIM update logs

**GET** `/accounts/{account_id}/access/logs/scim/updates`

Lists Access SCIM update logs that maintain a record of updates made to User and Group resources synced to Cloudflare via the System for Cross-domain Identity Management (SCIM).

### Responses

#### 200 Get Access SCIM update logs response

> Data is at `body["result"]`

```json
[
  {
    "cf_resource_id": "*string*",
    "error_description": "*string*",
    "idp_id": "*string*",
    "idp_resource_id": "*string*",
    "logged_at": "*string*",
    "request_body": "*string*",
    "request_method": "*string*",
    "resource_group_name": "*string*",
    "resource_type": "*string*",
    "resource_user_email": "*string*",
    "status": "*string*"
  }
]
```

#### 4XX Get Access SCIM update logs response failure

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


