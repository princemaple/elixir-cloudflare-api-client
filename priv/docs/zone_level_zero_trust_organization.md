# Zone-Level Zero Trust organization

## Update your Zero Trust organization

**PUT** `/zones/{zone_id}/access/organizations`

Updates the configuration for your Zero Trust organization.

### Responses

#### 200 Update your Zero Trust organization response

> Data is at `body["result"]`

```json
{
  "auth_domain": "*string*",
  "created_at": "*string*",
  "deny_unmatched_requests": "*boolean*",
  "deny_unmatched_requests_exempted_zone_names": [
    "*string*"
  ],
  "is_ui_read_only": "*boolean*",
  "login_design": null,
  "name": "*string*",
  "ui_read_only_toggle_reason": "*string*",
  "updated_at": "*string*",
  "user_seat_expiration_inactive_time": "*string*"
}
```

#### 4XX Update your Zero Trust organization response failure

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



## Create your Zero Trust organization

**POST** `/zones/{zone_id}/access/organizations`

Sets up a Zero Trust organization for your account.

### Responses

#### 201 Create your Zero Trust organization response

> Data is at `body["result"]`

```json
{
  "auth_domain": "*string*",
  "created_at": "*string*",
  "deny_unmatched_requests": "*boolean*",
  "deny_unmatched_requests_exempted_zone_names": [
    "*string*"
  ],
  "is_ui_read_only": "*boolean*",
  "login_design": null,
  "name": "*string*",
  "ui_read_only_toggle_reason": "*string*",
  "updated_at": "*string*",
  "user_seat_expiration_inactive_time": "*string*"
}
```

#### 4XX Create your Zero Trust organization response failure

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



## Get your Zero Trust organization

**GET** `/zones/{zone_id}/access/organizations`

Returns the configuration for your Zero Trust organization.

### Responses

#### 200 Get your Zero Trust organization response

> Data is at `body["result"]`

```json
{
  "auth_domain": "*string*",
  "created_at": "*string*",
  "deny_unmatched_requests": "*boolean*",
  "deny_unmatched_requests_exempted_zone_names": [
    "*string*"
  ],
  "is_ui_read_only": "*boolean*",
  "login_design": null,
  "name": "*string*",
  "ui_read_only_toggle_reason": "*string*",
  "updated_at": "*string*",
  "user_seat_expiration_inactive_time": "*string*"
}
```

#### 4XX Get your Zero Trust organization response failure

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



## Revoke all Access tokens for a user

**POST** `/zones/{zone_id}/access/organizations/revoke_user`

Revokes a user's access across all applications.

### Responses

#### 200 Revoke all Access tokens for a user response

> Data is at `body["result"]`

```json
"*boolean*"
```

#### 4xx Revoke all Access tokens for a user response failure

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


