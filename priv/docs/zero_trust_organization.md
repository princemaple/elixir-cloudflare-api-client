# Zero Trust organization

## Update your Zero Trust organization

**PUT** `/accounts/{account_id}/access/organizations`

Updates the configuration for your Zero Trust organization.

### Responses

#### 200 Update your Zero Trust organization response

> Data is at `body["result"]`

```json
{
  "allow_authenticate_via_warp": "*boolean*",
  "auth_domain": "*string*",
  "auto_redirect_to_identity": "*boolean*",
  "created_at": "*string*",
  "custom_pages": {
    "forbidden": "*string*",
    "identity_denied": "*string*"
  },
  "deny_unmatched_requests": "*boolean*",
  "deny_unmatched_requests_exempted_zone_names": [
    "*string*"
  ],
  "is_ui_read_only": "*boolean*",
  "login_design": {
    "background_color": "*string*",
    "footer_text": "*string*",
    "header_text": "*string*",
    "logo_path": "*string*",
    "text_color": "*string*"
  },
  "name": "*string*",
  "session_duration": "*string*",
  "ui_read_only_toggle_reason": "*string*",
  "updated_at": "*string*",
  "user_seat_expiration_inactive_time": "*string*",
  "warp_auth_session_duration": "*string*"
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

**POST** `/accounts/{account_id}/access/organizations`

Sets up a Zero Trust organization for your account.

### Responses

#### 201 Create your Zero Trust organization response

> Data is at `body["result"]`

```json
{
  "allow_authenticate_via_warp": "*boolean*",
  "auth_domain": "*string*",
  "auto_redirect_to_identity": "*boolean*",
  "created_at": "*string*",
  "custom_pages": {
    "forbidden": "*string*",
    "identity_denied": "*string*"
  },
  "deny_unmatched_requests": "*boolean*",
  "deny_unmatched_requests_exempted_zone_names": [
    "*string*"
  ],
  "is_ui_read_only": "*boolean*",
  "login_design": {
    "background_color": "*string*",
    "footer_text": "*string*",
    "header_text": "*string*",
    "logo_path": "*string*",
    "text_color": "*string*"
  },
  "name": "*string*",
  "session_duration": "*string*",
  "ui_read_only_toggle_reason": "*string*",
  "updated_at": "*string*",
  "user_seat_expiration_inactive_time": "*string*",
  "warp_auth_session_duration": "*string*"
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

**GET** `/accounts/{account_id}/access/organizations`

Returns the configuration for your Zero Trust organization.

### Responses

#### 200 Get your Zero Trust organization response

> Data is at `body["result"]`

```json
{
  "allow_authenticate_via_warp": "*boolean*",
  "auth_domain": "*string*",
  "auto_redirect_to_identity": "*boolean*",
  "created_at": "*string*",
  "custom_pages": {
    "forbidden": "*string*",
    "identity_denied": "*string*"
  },
  "deny_unmatched_requests": "*boolean*",
  "deny_unmatched_requests_exempted_zone_names": [
    "*string*"
  ],
  "is_ui_read_only": "*boolean*",
  "login_design": {
    "background_color": "*string*",
    "footer_text": "*string*",
    "header_text": "*string*",
    "logo_path": "*string*",
    "text_color": "*string*"
  },
  "name": "*string*",
  "session_duration": "*string*",
  "ui_read_only_toggle_reason": "*string*",
  "updated_at": "*string*",
  "user_seat_expiration_inactive_time": "*string*",
  "warp_auth_session_duration": "*string*"
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



## Update your Zero Trust organization DoH settings

**PUT** `/accounts/{account_id}/access/organizations/doh`

Updates the DoH settings for your Zero Trust organization.

### Responses

#### 201 Update your Zero Trust organization DoH settings response

> Data is at `body["result"]`

```json
{
  "doh_jwt_duration": "*string*"
}
```

#### 4XX Update your Zero Trust organization DoH settings response failure

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



## Get your Zero Trust organization DoH settings

**GET** `/accounts/{account_id}/access/organizations/doh`

Returns the DoH settings for your Zero Trust organization.

### Responses

#### 200 Get your Zero Trust organization DoH settings response

> Data is at `body["result"]`

```json
{
  "doh_jwt_duration": "*string*"
}
```

#### 4XX Get your Zero Trust organization DoH settings response failure

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

**POST** `/accounts/{account_id}/access/organizations/revoke_user`

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


