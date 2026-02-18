# Zero Trust accounts

## Update device settings for a Zero Trust account

**PUT** `/accounts/{account_id}/devices/settings`

Updates the current device settings for a Zero Trust account.

### Responses

#### 200 Update device settings for a Zero Trust account response.

> Data is at `body["result"]`

```json
{
  "disable_for_time": "*number*",
  "external_emergency_signal_enabled": "*boolean*",
  "external_emergency_signal_fingerprint": "*string*",
  "external_emergency_signal_interval": "*string*",
  "external_emergency_signal_url": "*string*",
  "gateway_proxy_enabled": "*boolean*",
  "gateway_udp_proxy_enabled": "*boolean*",
  "root_certificate_installation_enabled": "*boolean*",
  "use_zt_virtual_ip": "*boolean*"
}
```

#### 4XX Update device settings for a Zero Trust account response failure.

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



## Patch device settings for a Zero Trust account

**PATCH** `/accounts/{account_id}/devices/settings`

Patches the current device settings for a Zero Trust account.

### Responses

#### 200 Patch device settings for a Zero Trust account response.

> Data is at `body["result"]`

```json
{
  "disable_for_time": "*number*",
  "external_emergency_signal_enabled": "*boolean*",
  "external_emergency_signal_fingerprint": "*string*",
  "external_emergency_signal_interval": "*string*",
  "external_emergency_signal_url": "*string*",
  "gateway_proxy_enabled": "*boolean*",
  "gateway_udp_proxy_enabled": "*boolean*",
  "root_certificate_installation_enabled": "*boolean*",
  "use_zt_virtual_ip": "*boolean*"
}
```

#### 4XX Patch device settings for a Zero Trust account response failure.

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



## Get device settings for a Zero Trust account

**GET** `/accounts/{account_id}/devices/settings`

Describes the current device settings for a Zero Trust account.

### Responses

#### 200 Get device settings for a Zero Trust account response.

> Data is at `body["result"]`

```json
{
  "disable_for_time": "*number*",
  "external_emergency_signal_enabled": "*boolean*",
  "external_emergency_signal_fingerprint": "*string*",
  "external_emergency_signal_interval": "*string*",
  "external_emergency_signal_url": "*string*",
  "gateway_proxy_enabled": "*boolean*",
  "gateway_udp_proxy_enabled": "*boolean*",
  "root_certificate_installation_enabled": "*boolean*",
  "use_zt_virtual_ip": "*boolean*"
}
```

#### 4XX Get device settings for a Zero Trust account response failure.

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



## Reset device settings for a Zero Trust account with defaults. This turns off all proxying.

**DELETE** `/accounts/{account_id}/devices/settings`

Resets the current device settings for a Zero Trust account.

### Responses

#### 200 Reset response for device settings for a Zero Trust account.

> Data is at `body["result"]`

```json
{
  "disable_for_time": "*number*",
  "external_emergency_signal_enabled": "*boolean*",
  "external_emergency_signal_fingerprint": "*string*",
  "external_emergency_signal_interval": "*string*",
  "external_emergency_signal_url": "*string*",
  "gateway_proxy_enabled": "*boolean*",
  "gateway_udp_proxy_enabled": "*boolean*",
  "root_certificate_installation_enabled": "*boolean*",
  "use_zt_virtual_ip": "*boolean*"
}
```

#### 4XX Reset failure response device settings for a Zero Trust account.

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



## Create Zero Trust account

**POST** `/accounts/{account_id}/gateway`

Create a Zero Trust account for an existing Cloudflare account.

### Responses

#### 200 Create Zero Trust account response.

> Data is at `body["result"]`

```json
{
  "gateway_tag": "*string*",
  "id": "*string*",
  "provider_name": "*string*"
}
```

#### 4XX Create Zero Trust account response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust account information

**GET** `/accounts/{account_id}/gateway`

Retrieve information about the current Zero Trust account.

### Responses

#### 200 Zero Trust account information response.

> Data is at `body["result"]`

```json
{
  "gateway_tag": "*string*",
  "id": "*string*",
  "provider_name": "*string*"
}
```

#### 4XX Zero Trust account information response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Update Zero Trust account configuration

**PUT** `/accounts/{account_id}/gateway/configuration`

Update the current Zero Trust account configuration.

### Responses

#### 200 Zero Trust account configuration response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "settings": {
    "activity_log": {
      "enabled": "*boolean*"
    },
    "antivirus": {
      "enabled_download_phase": "*boolean*",
      "enabled_upload_phase": "*boolean*",
      "fail_closed": "*boolean*",
      "notification_settings": {
        "enabled": null,
        "include_context": null,
        "msg": null,
        "support_url": null
      }
    },
    "block_page": {
      "background_color": "*string*",
      "enabled": "*boolean*",
      "footer_text": "*string*",
      "header_text": "*string*",
      "include_context": "*boolean*",
      "logo_path": "*string*",
      "mailto_address": "*string*",
      "mailto_subject": "*string*",
      "mode": "*string*",
      "name": "*string*",
      "read_only": "*boolean*",
      "source_account": "*string*",
      "suppress_footer": "*boolean*",
      "target_uri": "*string*",
      "version": "*integer*"
    },
    "body_scanning": {
      "inspection_mode": "*string*"
    },
    "browser_isolation": {
      "non_identity_enabled": "*boolean*",
      "url_browser_isolation_enabled": "*boolean*"
    },
    "certificate": {
      "id": "*string*"
    },
    "custom_certificate": {
      "binding_status": "*string*",
      "enabled": "*boolean*",
      "id": "*string*",
      "updated_at": "*string*"
    },
    "extended_email_matching": {
      "enabled": "*boolean*",
      "read_only": "*boolean*",
      "source_account": "*string*",
      "version": "*integer*"
    },
    "fips": {
      "tls": "*boolean*"
    },
    "host_selector": {
      "enabled": "*boolean*"
    },
    "inspection": {
      "mode": "*string*"
    },
    "protocol_detection": {
      "enabled": "*boolean*"
    },
    "sandbox": {
      "enabled": "*boolean*",
      "fallback_action": "*string*"
    },
    "tls_decrypt": {
      "enabled": "*boolean*"
    }
  },
  "updated_at": "*string*"
}
```

#### 4XX Zero Trust account configuration response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Patch Zero Trust account configuration

**PATCH** `/accounts/{account_id}/gateway/configuration`

Update (PATCH) a single subcollection of settings such as `antivirus`, `tls_decrypt`, `activity_log`, `block_page`, `browser_isolation`, `fips`, `body_scanning`, or `certificate` without updating the entire configuration object. This endpoint returns an error if any settings collection lacks proper configuration.

### Responses

#### 200 Zero Trust account configuration response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "settings": {
    "activity_log": {
      "enabled": "*boolean*"
    },
    "antivirus": {
      "enabled_download_phase": "*boolean*",
      "enabled_upload_phase": "*boolean*",
      "fail_closed": "*boolean*",
      "notification_settings": {
        "enabled": null,
        "include_context": null,
        "msg": null,
        "support_url": null
      }
    },
    "block_page": {
      "background_color": "*string*",
      "enabled": "*boolean*",
      "footer_text": "*string*",
      "header_text": "*string*",
      "include_context": "*boolean*",
      "logo_path": "*string*",
      "mailto_address": "*string*",
      "mailto_subject": "*string*",
      "mode": "*string*",
      "name": "*string*",
      "read_only": "*boolean*",
      "source_account": "*string*",
      "suppress_footer": "*boolean*",
      "target_uri": "*string*",
      "version": "*integer*"
    },
    "body_scanning": {
      "inspection_mode": "*string*"
    },
    "browser_isolation": {
      "non_identity_enabled": "*boolean*",
      "url_browser_isolation_enabled": "*boolean*"
    },
    "certificate": {
      "id": "*string*"
    },
    "custom_certificate": {
      "binding_status": "*string*",
      "enabled": "*boolean*",
      "id": "*string*",
      "updated_at": "*string*"
    },
    "extended_email_matching": {
      "enabled": "*boolean*",
      "read_only": "*boolean*",
      "source_account": "*string*",
      "version": "*integer*"
    },
    "fips": {
      "tls": "*boolean*"
    },
    "host_selector": {
      "enabled": "*boolean*"
    },
    "inspection": {
      "mode": "*string*"
    },
    "protocol_detection": {
      "enabled": "*boolean*"
    },
    "sandbox": {
      "enabled": "*boolean*",
      "fallback_action": "*string*"
    },
    "tls_decrypt": {
      "enabled": "*boolean*"
    }
  },
  "updated_at": "*string*"
}
```

#### 4XX Zero Trust account configuration response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust account configuration

**GET** `/accounts/{account_id}/gateway/configuration`

Retrieve the current Zero Trust account configuration.

### Responses

#### 200 Zero Trust account configuration response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "settings": {
    "activity_log": {
      "enabled": "*boolean*"
    },
    "antivirus": {
      "enabled_download_phase": "*boolean*",
      "enabled_upload_phase": "*boolean*",
      "fail_closed": "*boolean*",
      "notification_settings": {
        "enabled": null,
        "include_context": null,
        "msg": null,
        "support_url": null
      }
    },
    "block_page": {
      "background_color": "*string*",
      "enabled": "*boolean*",
      "footer_text": "*string*",
      "header_text": "*string*",
      "include_context": "*boolean*",
      "logo_path": "*string*",
      "mailto_address": "*string*",
      "mailto_subject": "*string*",
      "mode": "*string*",
      "name": "*string*",
      "read_only": "*boolean*",
      "source_account": "*string*",
      "suppress_footer": "*boolean*",
      "target_uri": "*string*",
      "version": "*integer*"
    },
    "body_scanning": {
      "inspection_mode": "*string*"
    },
    "browser_isolation": {
      "non_identity_enabled": "*boolean*",
      "url_browser_isolation_enabled": "*boolean*"
    },
    "certificate": {
      "id": "*string*"
    },
    "custom_certificate": {
      "binding_status": "*string*",
      "enabled": "*boolean*",
      "id": "*string*",
      "updated_at": "*string*"
    },
    "extended_email_matching": {
      "enabled": "*boolean*",
      "read_only": "*boolean*",
      "source_account": "*string*",
      "version": "*integer*"
    },
    "fips": {
      "tls": "*boolean*"
    },
    "host_selector": {
      "enabled": "*boolean*"
    },
    "inspection": {
      "mode": "*string*"
    },
    "protocol_detection": {
      "enabled": "*boolean*"
    },
    "sandbox": {
      "enabled": "*boolean*",
      "fallback_action": "*string*"
    },
    "tls_decrypt": {
      "enabled": "*boolean*"
    }
  },
  "updated_at": "*string*"
}
```

#### 4XX Zero Trust account configuration response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust certificate configuration

**GET** `/accounts/{account_id}/gateway/configuration/custom_certificate`

Retrieve the current Zero Trust certificate configuration.

### Responses

#### 200 Zero Trust account configuration response.

> Data is at `body["result"]`

```json
{
  "binding_status": "*string*",
  "enabled": "*boolean*",
  "id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Zero Trust account configuration response failure.

```json
{
  "binding_status": "*string*",
  "enabled": "*boolean*",
  "errors": {},
  "id": "*string*",
  "messages": {},
  "result": {},
  "success": "*boolean*",
  "updated_at": "*string*"
}
```



## Update Zero Trust account logging settings

**PUT** `/accounts/{account_id}/gateway/logging`

Update logging settings for the current Zero Trust account.

### Responses

#### 200 Logging settings update response.

> Data is at `body["result"]`

```json
{
  "redact_pii": "*boolean*",
  "settings_by_rule_type": {
    "dns": {
      "log_all": "*boolean*",
      "log_blocks": "*boolean*"
    },
    "http": {
      "log_all": "*boolean*",
      "log_blocks": "*boolean*"
    },
    "l4": {
      "log_all": "*boolean*",
      "log_blocks": "*boolean*"
    }
  }
}
```

#### 4XX Logging settings update response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get logging settings for the Zero Trust account

**GET** `/accounts/{account_id}/gateway/logging`

Retrieve the current logging settings for the Zero Trust account.

### Responses

#### 200 Logging settings retrieval response.

> Data is at `body["result"]`

```json
{
  "redact_pii": "*boolean*",
  "settings_by_rule_type": {
    "dns": {
      "log_all": "*boolean*",
      "log_blocks": "*boolean*"
    },
    "http": {
      "log_all": "*boolean*",
      "log_blocks": "*boolean*"
    },
    "l4": {
      "log_all": "*boolean*",
      "log_blocks": "*boolean*"
    }
  }
}
```

#### 4XX Logging settings retrieval response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


