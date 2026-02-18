# Zero Trust Gateway rules

## Create a Zero Trust Gateway rule

**POST** `/accounts/{account_id}/gateway/rules`

Create a new Zero Trust Gateway rule.

### Responses

#### 200 Create a Zero Trust Gateway rule response.

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "description": "*string*",
  "device_posture": "*string*",
  "enabled": "*boolean*",
  "expiration": {
    "duration": "*integer*",
    "expired": "*boolean*",
    "expires_at": "*string*"
  },
  "filters": [
    "*string*"
  ],
  "id": "*string*",
  "identity": "*string*",
  "name": "*string*",
  "precedence": "*integer*",
  "read_only": "*boolean*",
  "rule_settings": {
    "add_headers": {},
    "allow_child_bypass": "*boolean*",
    "audit_ssh": {
      "command_logging": "*boolean*"
    },
    "biso_admin_controls": {
      "copy": "*string*",
      "dcp": "*boolean*",
      "dd": "*boolean*",
      "dk": "*boolean*",
      "download": "*string*",
      "dp": "*boolean*",
      "du": "*boolean*",
      "keyboard": "*string*",
      "paste": "*string*",
      "printing": "*string*",
      "upload": "*string*",
      "version": "*string*"
    },
    "block_page": {
      "include_context": "*boolean*",
      "target_uri": "*string*"
    },
    "block_page_enabled": "*boolean*",
    "block_reason": "*string*",
    "bypass_parent_rule": "*boolean*",
    "check_session": {
      "duration": "*string*",
      "enforce": "*boolean*"
    },
    "dns_resolvers": {
      "ipv4": [
        null
      ],
      "ipv6": [
        null
      ]
    },
    "egress": {
      "ipv4": "*string*",
      "ipv4_fallback": "*string*",
      "ipv6": "*string*"
    },
    "forensic_copy": {
      "enabled": "*boolean*"
    },
    "ignore_cname_category_matches": "*boolean*",
    "insecure_disable_dnssec_validation": "*boolean*",
    "ip_categories": "*boolean*",
    "ip_indicator_feeds": "*boolean*",
    "l4override": {
      "ip": "*string*",
      "port": "*integer*"
    },
    "notification_settings": {
      "enabled": "*boolean*",
      "include_context": "*boolean*",
      "msg": "*string*",
      "support_url": "*string*"
    },
    "override_host": "*string*",
    "override_ips": [
      "*string*"
    ],
    "payload_log": {
      "enabled": "*boolean*"
    },
    "quarantine": {
      "file_types": [
        "*string*"
      ]
    },
    "redirect": {
      "include_context": "*boolean*",
      "preserve_path_and_query": "*boolean*",
      "target_uri": "*string*"
    },
    "resolve_dns_internally": {
      "fallback": "*string*",
      "view_id": "*string*"
    },
    "resolve_dns_through_cloudflare": "*boolean*",
    "untrusted_cert": {
      "action": "*string*"
    }
  },
  "schedule": {
    "fri": "*string*",
    "mon": "*string*",
    "sat": "*string*",
    "sun": "*string*",
    "thu": "*string*",
    "time_zone": "*string*",
    "tue": "*string*",
    "wed": "*string*"
  },
  "sharable": "*boolean*",
  "source_account": "*string*",
  "traffic": "*string*",
  "updated_at": "*string*",
  "version": "*integer*",
  "warning_status": "*string*"
}
```

#### 4XX Create a Zero Trust Gateway rule response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## List Zero Trust Gateway rules

**GET** `/accounts/{account_id}/gateway/rules`

List Zero Trust Gateway rules for an account.

### Responses

#### 200 List Zero Trust Gateway rules response.

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "description": "*string*",
    "device_posture": "*string*",
    "enabled": "*boolean*",
    "expiration": {
      "duration": "*integer*",
      "expired": "*boolean*",
      "expires_at": null
    },
    "filters": [
      "*string*"
    ],
    "id": "*string*",
    "identity": "*string*",
    "name": "*string*",
    "precedence": "*integer*",
    "read_only": "*boolean*",
    "rule_settings": {
      "add_headers": {},
      "allow_child_bypass": "*boolean*",
      "audit_ssh": {
        "command_logging": null
      },
      "biso_admin_controls": {
        "copy": null,
        "dcp": null,
        "dd": null,
        "dk": null,
        "download": null,
        "dp": null,
        "du": null,
        "keyboard": null,
        "paste": null,
        "printing": null,
        "upload": null,
        "version": null
      },
      "block_page": {
        "include_context": null,
        "target_uri": null
      },
      "block_page_enabled": "*boolean*",
      "block_reason": "*string*",
      "bypass_parent_rule": "*boolean*",
      "check_session": {
        "duration": null,
        "enforce": null
      },
      "dns_resolvers": {
        "ipv4": null,
        "ipv6": null
      },
      "egress": {
        "ipv4": null,
        "ipv4_fallback": null,
        "ipv6": null
      },
      "forensic_copy": {
        "enabled": null
      },
      "ignore_cname_category_matches": "*boolean*",
      "insecure_disable_dnssec_validation": "*boolean*",
      "ip_categories": "*boolean*",
      "ip_indicator_feeds": "*boolean*",
      "l4override": {
        "ip": null,
        "port": null
      },
      "notification_settings": {
        "enabled": null,
        "include_context": null,
        "msg": null,
        "support_url": null
      },
      "override_host": "*string*",
      "override_ips": [
        null
      ],
      "payload_log": {
        "enabled": null
      },
      "quarantine": {
        "file_types": null
      },
      "redirect": {
        "include_context": null,
        "preserve_path_and_query": null,
        "target_uri": null
      },
      "resolve_dns_internally": {
        "fallback": null,
        "view_id": null
      },
      "resolve_dns_through_cloudflare": "*boolean*",
      "untrusted_cert": {
        "action": null
      }
    },
    "schedule": {
      "fri": "*string*",
      "mon": "*string*",
      "sat": "*string*",
      "sun": "*string*",
      "thu": "*string*",
      "time_zone": "*string*",
      "tue": "*string*",
      "wed": "*string*"
    },
    "sharable": "*boolean*",
    "source_account": "*string*",
    "traffic": "*string*",
    "updated_at": "*string*",
    "version": "*integer*",
    "warning_status": "*string*"
  }
]
```

#### 4XX List Zero Trust Gateway rules response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## List Zero Trust Gateway rules inherited from the parent account

**GET** `/accounts/{account_id}/gateway/rules/tenant`

List Zero Trust Gateway rules for the parent account of an account in the MSP configuration.

### Responses

#### 200 List Zero Trust Gateway rules response.

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "created_at": "*string*",
    "deleted_at": "*string*",
    "description": "*string*",
    "device_posture": "*string*",
    "enabled": "*boolean*",
    "expiration": {
      "duration": "*integer*",
      "expired": "*boolean*",
      "expires_at": null
    },
    "filters": [
      "*string*"
    ],
    "id": "*string*",
    "identity": "*string*",
    "name": "*string*",
    "precedence": "*integer*",
    "read_only": "*boolean*",
    "rule_settings": {
      "add_headers": {},
      "allow_child_bypass": "*boolean*",
      "audit_ssh": {
        "command_logging": null
      },
      "biso_admin_controls": {
        "copy": null,
        "dcp": null,
        "dd": null,
        "dk": null,
        "download": null,
        "dp": null,
        "du": null,
        "keyboard": null,
        "paste": null,
        "printing": null,
        "upload": null,
        "version": null
      },
      "block_page": {
        "include_context": null,
        "target_uri": null
      },
      "block_page_enabled": "*boolean*",
      "block_reason": "*string*",
      "bypass_parent_rule": "*boolean*",
      "check_session": {
        "duration": null,
        "enforce": null
      },
      "dns_resolvers": {
        "ipv4": null,
        "ipv6": null
      },
      "egress": {
        "ipv4": null,
        "ipv4_fallback": null,
        "ipv6": null
      },
      "forensic_copy": {
        "enabled": null
      },
      "ignore_cname_category_matches": "*boolean*",
      "insecure_disable_dnssec_validation": "*boolean*",
      "ip_categories": "*boolean*",
      "ip_indicator_feeds": "*boolean*",
      "l4override": {
        "ip": null,
        "port": null
      },
      "notification_settings": {
        "enabled": null,
        "include_context": null,
        "msg": null,
        "support_url": null
      },
      "override_host": "*string*",
      "override_ips": [
        null
      ],
      "payload_log": {
        "enabled": null
      },
      "quarantine": {
        "file_types": null
      },
      "redirect": {
        "include_context": null,
        "preserve_path_and_query": null,
        "target_uri": null
      },
      "resolve_dns_internally": {
        "fallback": null,
        "view_id": null
      },
      "resolve_dns_through_cloudflare": "*boolean*",
      "untrusted_cert": {
        "action": null
      }
    },
    "schedule": {
      "fri": "*string*",
      "mon": "*string*",
      "sat": "*string*",
      "sun": "*string*",
      "thu": "*string*",
      "time_zone": "*string*",
      "tue": "*string*",
      "wed": "*string*"
    },
    "sharable": "*boolean*",
    "source_account": "*string*",
    "traffic": "*string*",
    "updated_at": "*string*",
    "version": "*integer*",
    "warning_status": "*string*"
  }
]
```

#### 4XX List Zero Trust Gateway rules response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update a Zero Trust Gateway rule

**PUT** `/accounts/{account_id}/gateway/rules/{rule_id}`

Update a configured Zero Trust Gateway rule.

### Responses

#### 200 Update a Zero Trust Gateway rule response.

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "description": "*string*",
  "device_posture": "*string*",
  "enabled": "*boolean*",
  "expiration": {
    "duration": "*integer*",
    "expired": "*boolean*",
    "expires_at": "*string*"
  },
  "filters": [
    "*string*"
  ],
  "id": "*string*",
  "identity": "*string*",
  "name": "*string*",
  "precedence": "*integer*",
  "read_only": "*boolean*",
  "rule_settings": {
    "add_headers": {},
    "allow_child_bypass": "*boolean*",
    "audit_ssh": {
      "command_logging": "*boolean*"
    },
    "biso_admin_controls": {
      "copy": "*string*",
      "dcp": "*boolean*",
      "dd": "*boolean*",
      "dk": "*boolean*",
      "download": "*string*",
      "dp": "*boolean*",
      "du": "*boolean*",
      "keyboard": "*string*",
      "paste": "*string*",
      "printing": "*string*",
      "upload": "*string*",
      "version": "*string*"
    },
    "block_page": {
      "include_context": "*boolean*",
      "target_uri": "*string*"
    },
    "block_page_enabled": "*boolean*",
    "block_reason": "*string*",
    "bypass_parent_rule": "*boolean*",
    "check_session": {
      "duration": "*string*",
      "enforce": "*boolean*"
    },
    "dns_resolvers": {
      "ipv4": [
        null
      ],
      "ipv6": [
        null
      ]
    },
    "egress": {
      "ipv4": "*string*",
      "ipv4_fallback": "*string*",
      "ipv6": "*string*"
    },
    "forensic_copy": {
      "enabled": "*boolean*"
    },
    "ignore_cname_category_matches": "*boolean*",
    "insecure_disable_dnssec_validation": "*boolean*",
    "ip_categories": "*boolean*",
    "ip_indicator_feeds": "*boolean*",
    "l4override": {
      "ip": "*string*",
      "port": "*integer*"
    },
    "notification_settings": {
      "enabled": "*boolean*",
      "include_context": "*boolean*",
      "msg": "*string*",
      "support_url": "*string*"
    },
    "override_host": "*string*",
    "override_ips": [
      "*string*"
    ],
    "payload_log": {
      "enabled": "*boolean*"
    },
    "quarantine": {
      "file_types": [
        "*string*"
      ]
    },
    "redirect": {
      "include_context": "*boolean*",
      "preserve_path_and_query": "*boolean*",
      "target_uri": "*string*"
    },
    "resolve_dns_internally": {
      "fallback": "*string*",
      "view_id": "*string*"
    },
    "resolve_dns_through_cloudflare": "*boolean*",
    "untrusted_cert": {
      "action": "*string*"
    }
  },
  "schedule": {
    "fri": "*string*",
    "mon": "*string*",
    "sat": "*string*",
    "sun": "*string*",
    "thu": "*string*",
    "time_zone": "*string*",
    "tue": "*string*",
    "wed": "*string*"
  },
  "sharable": "*boolean*",
  "source_account": "*string*",
  "traffic": "*string*",
  "updated_at": "*string*",
  "version": "*integer*",
  "warning_status": "*string*"
}
```

#### 4XX Update a Zero Trust Gateway rule response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust Gateway rule details.

**GET** `/accounts/{account_id}/gateway/rules/{rule_id}`

Get a single Zero Trust Gateway rule.

### Responses

#### 200 Get Zero Trust Gateway rule details response.

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "description": "*string*",
  "device_posture": "*string*",
  "enabled": "*boolean*",
  "expiration": {
    "duration": "*integer*",
    "expired": "*boolean*",
    "expires_at": "*string*"
  },
  "filters": [
    "*string*"
  ],
  "id": "*string*",
  "identity": "*string*",
  "name": "*string*",
  "precedence": "*integer*",
  "read_only": "*boolean*",
  "rule_settings": {
    "add_headers": {},
    "allow_child_bypass": "*boolean*",
    "audit_ssh": {
      "command_logging": "*boolean*"
    },
    "biso_admin_controls": {
      "copy": "*string*",
      "dcp": "*boolean*",
      "dd": "*boolean*",
      "dk": "*boolean*",
      "download": "*string*",
      "dp": "*boolean*",
      "du": "*boolean*",
      "keyboard": "*string*",
      "paste": "*string*",
      "printing": "*string*",
      "upload": "*string*",
      "version": "*string*"
    },
    "block_page": {
      "include_context": "*boolean*",
      "target_uri": "*string*"
    },
    "block_page_enabled": "*boolean*",
    "block_reason": "*string*",
    "bypass_parent_rule": "*boolean*",
    "check_session": {
      "duration": "*string*",
      "enforce": "*boolean*"
    },
    "dns_resolvers": {
      "ipv4": [
        null
      ],
      "ipv6": [
        null
      ]
    },
    "egress": {
      "ipv4": "*string*",
      "ipv4_fallback": "*string*",
      "ipv6": "*string*"
    },
    "forensic_copy": {
      "enabled": "*boolean*"
    },
    "ignore_cname_category_matches": "*boolean*",
    "insecure_disable_dnssec_validation": "*boolean*",
    "ip_categories": "*boolean*",
    "ip_indicator_feeds": "*boolean*",
    "l4override": {
      "ip": "*string*",
      "port": "*integer*"
    },
    "notification_settings": {
      "enabled": "*boolean*",
      "include_context": "*boolean*",
      "msg": "*string*",
      "support_url": "*string*"
    },
    "override_host": "*string*",
    "override_ips": [
      "*string*"
    ],
    "payload_log": {
      "enabled": "*boolean*"
    },
    "quarantine": {
      "file_types": [
        "*string*"
      ]
    },
    "redirect": {
      "include_context": "*boolean*",
      "preserve_path_and_query": "*boolean*",
      "target_uri": "*string*"
    },
    "resolve_dns_internally": {
      "fallback": "*string*",
      "view_id": "*string*"
    },
    "resolve_dns_through_cloudflare": "*boolean*",
    "untrusted_cert": {
      "action": "*string*"
    }
  },
  "schedule": {
    "fri": "*string*",
    "mon": "*string*",
    "sat": "*string*",
    "sun": "*string*",
    "thu": "*string*",
    "time_zone": "*string*",
    "tue": "*string*",
    "wed": "*string*"
  },
  "sharable": "*boolean*",
  "source_account": "*string*",
  "traffic": "*string*",
  "updated_at": "*string*",
  "version": "*integer*",
  "warning_status": "*string*"
}
```

#### 4XX Get Zero Trust Gateway rule details response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Delete a Zero Trust Gateway rule

**DELETE** `/accounts/{account_id}/gateway/rules/{rule_id}`

Delete a Zero Trust Gateway rule.

### Responses

#### 200 Delete a Zero Trust Gateway rule response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete a Zero Trust Gateway rule response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Reset the expiration of a Zero Trust Gateway Rule

**POST** `/accounts/{account_id}/gateway/rules/{rule_id}/reset_expiration`

Resets the expiration of a Zero Trust Gateway Rule if its duration elapsed and it has a default duration. The Zero Trust Gateway Rule must have values  for both `expiration.expires_at` and `expiration.duration`.

### Responses

#### 200 Reset the expiration of a Zero Trust Gateway rule response.

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "created_at": "*string*",
  "deleted_at": "*string*",
  "description": "*string*",
  "device_posture": "*string*",
  "enabled": "*boolean*",
  "expiration": {
    "duration": "*integer*",
    "expired": "*boolean*",
    "expires_at": "*string*"
  },
  "filters": [
    "*string*"
  ],
  "id": "*string*",
  "identity": "*string*",
  "name": "*string*",
  "precedence": "*integer*",
  "read_only": "*boolean*",
  "rule_settings": {
    "add_headers": {},
    "allow_child_bypass": "*boolean*",
    "audit_ssh": {
      "command_logging": "*boolean*"
    },
    "biso_admin_controls": {
      "copy": "*string*",
      "dcp": "*boolean*",
      "dd": "*boolean*",
      "dk": "*boolean*",
      "download": "*string*",
      "dp": "*boolean*",
      "du": "*boolean*",
      "keyboard": "*string*",
      "paste": "*string*",
      "printing": "*string*",
      "upload": "*string*",
      "version": "*string*"
    },
    "block_page": {
      "include_context": "*boolean*",
      "target_uri": "*string*"
    },
    "block_page_enabled": "*boolean*",
    "block_reason": "*string*",
    "bypass_parent_rule": "*boolean*",
    "check_session": {
      "duration": "*string*",
      "enforce": "*boolean*"
    },
    "dns_resolvers": {
      "ipv4": [
        null
      ],
      "ipv6": [
        null
      ]
    },
    "egress": {
      "ipv4": "*string*",
      "ipv4_fallback": "*string*",
      "ipv6": "*string*"
    },
    "forensic_copy": {
      "enabled": "*boolean*"
    },
    "ignore_cname_category_matches": "*boolean*",
    "insecure_disable_dnssec_validation": "*boolean*",
    "ip_categories": "*boolean*",
    "ip_indicator_feeds": "*boolean*",
    "l4override": {
      "ip": "*string*",
      "port": "*integer*"
    },
    "notification_settings": {
      "enabled": "*boolean*",
      "include_context": "*boolean*",
      "msg": "*string*",
      "support_url": "*string*"
    },
    "override_host": "*string*",
    "override_ips": [
      "*string*"
    ],
    "payload_log": {
      "enabled": "*boolean*"
    },
    "quarantine": {
      "file_types": [
        "*string*"
      ]
    },
    "redirect": {
      "include_context": "*boolean*",
      "preserve_path_and_query": "*boolean*",
      "target_uri": "*string*"
    },
    "resolve_dns_internally": {
      "fallback": "*string*",
      "view_id": "*string*"
    },
    "resolve_dns_through_cloudflare": "*boolean*",
    "untrusted_cert": {
      "action": "*string*"
    }
  },
  "schedule": {
    "fri": "*string*",
    "mon": "*string*",
    "sat": "*string*",
    "sun": "*string*",
    "thu": "*string*",
    "time_zone": "*string*",
    "tue": "*string*",
    "wed": "*string*"
  },
  "sharable": "*boolean*",
  "source_account": "*string*",
  "traffic": "*string*",
  "updated_at": "*string*",
  "version": "*integer*",
  "warning_status": "*string*"
}
```

#### 4XX Reset the expiration of a Zero Trust Gateway rule response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


