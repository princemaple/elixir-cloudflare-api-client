# Email Security Settings

## Create an email allow policy

**POST** `/accounts/{account_id}/email-security/settings/allow_policies`



### Responses

#### 201 Contains the newly created policy.

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_acceptable_sender": "*boolean*",
  "is_exempt_recipient": "*boolean*",
  "is_recipient": "*boolean*",
  "is_regex": "*boolean*",
  "is_sender": "*boolean*",
  "is_spoof": "*boolean*",
  "is_trusted_sender": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*",
  "pattern_type": "*string*",
  "verify_sender": "*boolean*"
}
```

#### 4XX 

```json

```



## List email allow policies

**GET** `/accounts/{account_id}/email-security/settings/allow_policies`

Lists, searches, and sorts an account’s email allow policies.

### Responses

#### 200 Contains a list of allow policies for the account.

> Data is at `body["result"]`

```json
[
  {
    "comments": "*string*",
    "created_at": "*string*",
    "id": "*integer*",
    "is_acceptable_sender": "*boolean*",
    "is_exempt_recipient": "*boolean*",
    "is_recipient": "*boolean*",
    "is_regex": "*boolean*",
    "is_sender": "*boolean*",
    "is_spoof": "*boolean*",
    "is_trusted_sender": "*boolean*",
    "last_modified": "*string*",
    "pattern": "*string*",
    "pattern_type": "*string*",
    "verify_sender": "*boolean*"
  }
]
```

#### 4XX 

```json

```



## Batch Allow Policies

**POST** `/accounts/{account_id}/email-security/settings/allow_policies/batch`

Send a Batch of Allow Policies API calls to be executed together.

### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "deletes": [
    {
      "id": "*integer*"
    }
  ],
  "patches": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_acceptable_sender": "*boolean*",
      "is_exempt_recipient": "*boolean*",
      "is_recipient": "*boolean*",
      "is_regex": "*boolean*",
      "is_sender": "*boolean*",
      "is_spoof": "*boolean*",
      "is_trusted_sender": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*",
      "pattern_type": "*string*",
      "verify_sender": "*boolean*"
    }
  ],
  "posts": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_acceptable_sender": "*boolean*",
      "is_exempt_recipient": "*boolean*",
      "is_recipient": "*boolean*",
      "is_regex": "*boolean*",
      "is_sender": "*boolean*",
      "is_spoof": "*boolean*",
      "is_trusted_sender": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*",
      "pattern_type": "*string*",
      "verify_sender": "*boolean*"
    }
  ],
  "puts": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_acceptable_sender": "*boolean*",
      "is_exempt_recipient": "*boolean*",
      "is_recipient": "*boolean*",
      "is_regex": "*boolean*",
      "is_sender": "*boolean*",
      "is_spoof": "*boolean*",
      "is_trusted_sender": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*",
      "pattern_type": "*string*",
      "verify_sender": "*boolean*"
    }
  ]
}
```

#### 4XX 

```json

```



## Update an email allow policy

**PATCH** `/accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_acceptable_sender": "*boolean*",
  "is_exempt_recipient": "*boolean*",
  "is_recipient": "*boolean*",
  "is_regex": "*boolean*",
  "is_sender": "*boolean*",
  "is_spoof": "*boolean*",
  "is_trusted_sender": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*",
  "pattern_type": "*string*",
  "verify_sender": "*boolean*"
}
```

#### 4XX 

```json

```



## Get an email allow policy

**GET** `/accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_acceptable_sender": "*boolean*",
  "is_exempt_recipient": "*boolean*",
  "is_recipient": "*boolean*",
  "is_regex": "*boolean*",
  "is_sender": "*boolean*",
  "is_spoof": "*boolean*",
  "is_trusted_sender": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*",
  "pattern_type": "*string*",
  "verify_sender": "*boolean*"
}
```

#### 4XX 

```json

```



## Delete an email allow policy

**DELETE** `/accounts/{account_id}/email-security/settings/allow_policies/{policy_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "id": "*integer*"
}
```

#### 4XX 

```json

```



## Create a blocked email sender

**POST** `/accounts/{account_id}/email-security/settings/block_senders`



### Responses

#### 201 Contains the newly created pattern.

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_regex": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*",
  "pattern_type": "*string*"
}
```

#### 4XX 

```json

```



## List blocked email senders

**GET** `/accounts/{account_id}/email-security/settings/block_senders`



### Responses

#### 200 Contains a list of blocked senders for the account.

> Data is at `body["result"]`

```json
[
  {
    "comments": "*string*",
    "created_at": "*string*",
    "id": "*integer*",
    "is_regex": "*boolean*",
    "last_modified": "*string*",
    "pattern": "*string*",
    "pattern_type": "*string*"
  }
]
```

#### 4XX 

```json

```



## Batch Block Senders

**POST** `/accounts/{account_id}/email-security/settings/block_senders/batch`

Send a Batch of Block Senders API calls to be executed together.

### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "deletes": [
    {
      "id": "*integer*"
    }
  ],
  "patches": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_regex": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*",
      "pattern_type": "*string*"
    }
  ],
  "posts": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_regex": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*",
      "pattern_type": "*string*"
    }
  ],
  "puts": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_regex": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*",
      "pattern_type": "*string*"
    }
  ]
}
```

#### 4XX 

```json

```



## Update a blocked email sender

**PATCH** `/accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_regex": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*",
  "pattern_type": "*string*"
}
```

#### 4XX 

```json

```



## Get a blocked email sender

**GET** `/accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_regex": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*",
  "pattern_type": "*string*"
}
```

#### 4XX 

```json

```



## Delete a blocked email sender

**DELETE** `/accounts/{account_id}/email-security/settings/block_senders/{pattern_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "id": "*integer*"
}
```

#### 4XX 

```json

```



## List protected email domains

**GET** `/accounts/{account_id}/email-security/settings/domains`

Lists, searches, and sorts an account’s email domains.

### Responses

#### 200 Contains a list of domains for the account.

> Data is at `body["result"]`

```json
[
  {
    "allowed_delivery_modes": [
      "*string*"
    ],
    "authorization": {
      "authorized": "*boolean*",
      "status_message": "*string*",
      "timestamp": "*string*"
    },
    "created_at": "*string*",
    "dmarc_status": "*string*",
    "domain": "*string*",
    "drop_dispositions": [
      "*string*"
    ],
    "emails_processed": {
      "timestamp": "*string*",
      "total_emails_processed": "*integer*",
      "total_emails_processed_previous": "*integer*"
    },
    "folder": "*string*",
    "id": "*integer*",
    "inbox_provider": "*string*",
    "integration_id": "*string*",
    "ip_restrictions": [
      "*string*"
    ],
    "last_modified": "*string*",
    "lookback_hops": "*integer*",
    "o365_tenant_id": "*string*",
    "regions": [
      "*string*"
    ],
    "require_tls_inbound": "*boolean*",
    "require_tls_outbound": "*boolean*",
    "spf_status": "*string*",
    "transport": "*string*"
  }
]
```

#### 4XX 

```json

```



## Unprotect multiple email domains

**DELETE** `/accounts/{account_id}/email-security/settings/domains`



### Responses

#### 200 

> Data is at `body["result"]`

```json
[
  {
    "id": "*integer*"
  }
]
```

#### 4XX 

```json

```



## Update an email domain

**PATCH** `/accounts/{account_id}/email-security/settings/domains/{domain_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "allowed_delivery_modes": [
    "*string*"
  ],
  "authorization": {
    "authorized": "*boolean*",
    "status_message": "*string*",
    "timestamp": "*string*"
  },
  "created_at": "*string*",
  "dmarc_status": "*string*",
  "domain": "*string*",
  "drop_dispositions": [
    "*string*"
  ],
  "emails_processed": {
    "timestamp": "*string*",
    "total_emails_processed": "*integer*",
    "total_emails_processed_previous": "*integer*"
  },
  "folder": "*string*",
  "id": "*integer*",
  "inbox_provider": "*string*",
  "integration_id": "*string*",
  "ip_restrictions": [
    "*string*"
  ],
  "last_modified": "*string*",
  "lookback_hops": "*integer*",
  "o365_tenant_id": "*string*",
  "regions": [
    "*string*"
  ],
  "require_tls_inbound": "*boolean*",
  "require_tls_outbound": "*boolean*",
  "spf_status": "*string*",
  "transport": "*string*"
}
```

#### 4XX 

```json

```



## Get an email domain

**GET** `/accounts/{account_id}/email-security/settings/domains/{domain_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "allowed_delivery_modes": [
    "*string*"
  ],
  "authorization": {
    "authorized": "*boolean*",
    "status_message": "*string*",
    "timestamp": "*string*"
  },
  "created_at": "*string*",
  "dmarc_status": "*string*",
  "domain": "*string*",
  "drop_dispositions": [
    "*string*"
  ],
  "emails_processed": {
    "timestamp": "*string*",
    "total_emails_processed": "*integer*",
    "total_emails_processed_previous": "*integer*"
  },
  "folder": "*string*",
  "id": "*integer*",
  "inbox_provider": "*string*",
  "integration_id": "*string*",
  "ip_restrictions": [
    "*string*"
  ],
  "last_modified": "*string*",
  "lookback_hops": "*integer*",
  "o365_tenant_id": "*string*",
  "regions": [
    "*string*"
  ],
  "require_tls_inbound": "*boolean*",
  "require_tls_outbound": "*boolean*",
  "spf_status": "*string*",
  "transport": "*string*"
}
```

#### 4XX 

```json

```



## Unprotect an email domain

**DELETE** `/accounts/{account_id}/email-security/settings/domains/{domain_id}`



### Responses

#### 200 Deletes the domain with the provided id.

> Data is at `body["result"]`

```json
{
  "id": "*integer*"
}
```

#### 4XX 

```json

```



## Create an entry in impersonation registry

**POST** `/accounts/{account_id}/email-security/settings/impersonation_registry`



### Responses

#### 201 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "directory_id": "*integer*",
  "directory_node_id": "*integer*",
  "email": "*string*",
  "external_directory_node_id": "*string*",
  "id": "*integer*",
  "is_email_regex": "*boolean*",
  "last_modified": "*string*",
  "name": "*string*",
  "provenance": "*string*"
}
```

#### 4XX 

```json

```



## List entries in impersonation registry

**GET** `/accounts/{account_id}/email-security/settings/impersonation_registry`

Lists, searches, and sorts entries in the impersonation registry.

### Responses

#### 200 Contains the list of impersonation registry entries for the account.

> Data is at `body["result"]`

```json
[
  {
    "comments": "*string*",
    "created_at": "*string*",
    "directory_id": "*integer*",
    "directory_node_id": "*integer*",
    "email": "*string*",
    "external_directory_node_id": "*string*",
    "id": "*integer*",
    "is_email_regex": "*boolean*",
    "last_modified": "*string*",
    "name": "*string*",
    "provenance": "*string*"
  }
]
```

#### 4XX 

```json

```



## Update an entry in impersonation registry

**PATCH** `/accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "directory_id": "*integer*",
  "directory_node_id": "*integer*",
  "email": "*string*",
  "external_directory_node_id": "*string*",
  "id": "*integer*",
  "is_email_regex": "*boolean*",
  "last_modified": "*string*",
  "name": "*string*",
  "provenance": "*string*"
}
```

#### 4XX 

```json

```



## Get an entry in impersonation registry

**GET** `/accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "directory_id": "*integer*",
  "directory_node_id": "*integer*",
  "email": "*string*",
  "external_directory_node_id": "*string*",
  "id": "*integer*",
  "is_email_regex": "*boolean*",
  "last_modified": "*string*",
  "name": "*string*",
  "provenance": "*string*"
}
```

#### 4XX 

```json

```



## Delete an entry from impersonation registry

**DELETE** `/accounts/{account_id}/email-security/settings/impersonation_registry/{display_name_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "id": "*integer*"
}
```

#### 4XX 

```json

```



## Batch Sending Domain Restrictions

**POST** `/accounts/{account_id}/email-security/settings/sending_domain_restrictions/batch`

Send a Batch of `sending_domain_restrictions` API calls to be executed together.

### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "deletes": [
    {
      "id": "*integer*"
    }
  ]
}
```

#### 4XX 

```json

```



## Create a trusted email domain

**POST** `/accounts/{account_id}/email-security/settings/trusted_domains`



### Responses

#### 201 Contains the new trusted domain in the shape of the request body.

> Data is at `body["result"]`

```json
null
```

#### 4XX 

```json

```



## List trusted email domains

**GET** `/accounts/{account_id}/email-security/settings/trusted_domains`

Lists, searches, and sorts an account’s trusted email domains.

### Responses

#### 200 Contains the list of trusted domains for the account.

> Data is at `body["result"]`

```json
[
  {
    "comments": "*string*",
    "created_at": "*string*",
    "id": "*integer*",
    "is_recent": "*boolean*",
    "is_regex": "*boolean*",
    "is_similarity": "*boolean*",
    "last_modified": "*string*",
    "pattern": "*string*"
  }
]
```

#### 4XX 

```json

```



## Batch Trusted Domains

**POST** `/accounts/{account_id}/email-security/settings/trusted_domains/batch`

Send a Batch of Trusted Domains API calls to be executed together.

### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "deletes": [
    {
      "id": "*integer*"
    }
  ],
  "patches": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_recent": "*boolean*",
      "is_regex": "*boolean*",
      "is_similarity": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*"
    }
  ],
  "posts": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_recent": "*boolean*",
      "is_regex": "*boolean*",
      "is_similarity": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*"
    }
  ],
  "puts": [
    {
      "comments": "*string*",
      "created_at": "*string*",
      "id": "*integer*",
      "is_recent": "*boolean*",
      "is_regex": "*boolean*",
      "is_similarity": "*boolean*",
      "last_modified": "*string*",
      "pattern": "*string*"
    }
  ]
}
```

#### 4XX 

```json

```



## Update a trusted email domain

**PATCH** `/accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_recent": "*boolean*",
  "is_regex": "*boolean*",
  "is_similarity": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*"
}
```

#### 4XX 

```json

```



## Get a trusted email domain

**GET** `/accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "comments": "*string*",
  "created_at": "*string*",
  "id": "*integer*",
  "is_recent": "*boolean*",
  "is_regex": "*boolean*",
  "is_similarity": "*boolean*",
  "last_modified": "*string*",
  "pattern": "*string*"
}
```

#### 4XX 

```json

```



## Delete a trusted email domain

**DELETE** `/accounts/{account_id}/email-security/settings/trusted_domains/{trusted_domain_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "id": "*integer*"
}
```

#### 4XX 

```json

```


