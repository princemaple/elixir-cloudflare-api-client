# Email Security

## Search email messages

**GET** `/accounts/{account_id}/email-security/investigate`

Returns information for each email that matches the search parameter(s).
If the search takes too long, the endpoint returns 202 with a Location header
pointing to a polling endpoint where results can be retrieved once ready.

### Responses

#### 200 Contains the search results for the provided query.

> Data is at `body["result"]`

```json
[
  {
    "action_log": null,
    "alert_id": "*string*",
    "client_recipients": [
      "*string*"
    ],
    "delivery_mode": "*string*",
    "detection_reasons": [
      "*string*"
    ],
    "edf_hash": "*string*",
    "envelope_from": "*string*",
    "envelope_to": [
      "*string*"
    ],
    "final_disposition": "*string*",
    "findings": [
      {
        "attachment": "*string*",
        "detail": "*string*",
        "detection": null,
        "field": "*string*",
        "name": "*string*",
        "portion": "*string*",
        "reason": "*string*",
        "score": "*number*",
        "value": "*string*"
      }
    ],
    "from": "*string*",
    "from_name": "*string*",
    "htmltext_structure_hash": "*string*",
    "id": "*string*",
    "is_phish_submission": "*boolean*",
    "is_quarantined": "*boolean*",
    "message_id": "*string*",
    "postfix_id": "*string*",
    "postfix_id_outbound": "*string*",
    "properties": {
      "allowlisted_pattern": "*string*",
      "allowlisted_pattern_type": "*string*",
      "blocklisted_message": "*boolean*",
      "blocklisted_pattern": "*string*",
      "whitelisted_pattern_type": "*string*"
    },
    "replyto": "*string*",
    "sent_date": "*string*",
    "subject": "*string*",
    "threat_categories": [
      "*string*"
    ],
    "to": [
      "*string*"
    ],
    "to_name": [
      "*string*"
    ],
    "ts": "*string*",
    "validation": {
      "comment": "*string*",
      "dkim": null,
      "dmarc": null,
      "spf": null
    }
  }
]
```

#### 202 The search is taking longer than expected. Use the Location header to poll for results.

> Data is at `body["result"]`

```json
[
  {
    "action_log": null,
    "alert_id": "*string*",
    "client_recipients": [
      "*string*"
    ],
    "delivery_mode": "*string*",
    "detection_reasons": [
      "*string*"
    ],
    "edf_hash": "*string*",
    "envelope_from": "*string*",
    "envelope_to": [
      "*string*"
    ],
    "final_disposition": "*string*",
    "findings": [
      {
        "attachment": "*string*",
        "detail": "*string*",
        "detection": null,
        "field": "*string*",
        "name": "*string*",
        "portion": "*string*",
        "reason": "*string*",
        "score": "*number*",
        "value": "*string*"
      }
    ],
    "from": "*string*",
    "from_name": "*string*",
    "htmltext_structure_hash": "*string*",
    "id": "*string*",
    "is_phish_submission": "*boolean*",
    "is_quarantined": "*boolean*",
    "message_id": "*string*",
    "postfix_id": "*string*",
    "postfix_id_outbound": "*string*",
    "properties": {
      "allowlisted_pattern": "*string*",
      "allowlisted_pattern_type": "*string*",
      "blocklisted_message": "*boolean*",
      "blocklisted_pattern": "*string*",
      "whitelisted_pattern_type": "*string*"
    },
    "replyto": "*string*",
    "sent_date": "*string*",
    "subject": "*string*",
    "threat_categories": [
      "*string*"
    ],
    "to": [
      "*string*"
    ],
    "to_name": [
      "*string*"
    ],
    "ts": "*string*",
    "validation": {
      "comment": "*string*",
      "dkim": null,
      "dmarc": null,
      "spf": null
    }
  }
]
```

#### 4XX 

```json

```



## Move multiple messages

**POST** `/accounts/{account_id}/email-security/investigate/move`

Maximum batch size: 1000 messages per request

### Responses

#### 200 

> Data is at `body["result"]`

```json
[
  {
    "completed_timestamp": "*string*",
    "destination": "*string*",
    "item_count": "*integer*",
    "message_id": "*string*",
    "operation": "*string*",
    "recipient": "*string*",
    "status": "*string*",
    "success": "*boolean*"
  }
]
```

#### 4XX 

```json

```



## Preview for non-detection messages

**POST** `/accounts/{account_id}/email-security/investigate/preview`



### Responses

#### 200 

> Data is at `body["result"]`

```json
{
  "screenshot": "*string*"
}
```

#### 4XX 

```json

```



## Release messages from quarantine

**POST** `/accounts/{account_id}/email-security/investigate/release`



### Responses

#### 200 

> Data is at `body["result"]`

```json
[
  {
    "delivered": [
      "*string*"
    ],
    "failed": [
      "*string*"
    ],
    "id": "*string*",
    "postfix_id": "*string*",
    "undelivered": [
      "*string*"
    ]
  }
]
```

#### 4XX 

```json

```



## Get message details

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}`



### Responses

#### 200 Contains the email message details.

> Data is at `body["result"]`

```json
{
  "action_log": null,
  "alert_id": "*string*",
  "client_recipients": [
    "*string*"
  ],
  "delivery_mode": "*string*",
  "detection_reasons": [
    "*string*"
  ],
  "edf_hash": "*string*",
  "envelope_from": "*string*",
  "envelope_to": [
    "*string*"
  ],
  "final_disposition": "*string*",
  "findings": [
    {
      "attachment": "*string*",
      "detail": "*string*",
      "detection": "*string*",
      "field": "*string*",
      "name": "*string*",
      "portion": "*string*",
      "reason": "*string*",
      "score": "*number*",
      "value": "*string*"
    }
  ],
  "from": "*string*",
  "from_name": "*string*",
  "htmltext_structure_hash": "*string*",
  "id": "*string*",
  "is_phish_submission": "*boolean*",
  "is_quarantined": "*boolean*",
  "message_id": "*string*",
  "postfix_id": "*string*",
  "postfix_id_outbound": "*string*",
  "properties": {
    "allowlisted_pattern": "*string*",
    "allowlisted_pattern_type": "*string*",
    "blocklisted_message": "*boolean*",
    "blocklisted_pattern": "*string*",
    "whitelisted_pattern_type": "*string*"
  },
  "replyto": "*string*",
  "sent_date": "*string*",
  "subject": "*string*",
  "threat_categories": [
    "*string*"
  ],
  "to": [
    "*string*"
  ],
  "to_name": [
    "*string*"
  ],
  "ts": "*string*",
  "validation": {
    "comment": "*string*",
    "dkim": "*string*",
    "dmarc": "*string*",
    "spf": "*string*"
  }
}
```

#### 4XX 

```json

```



## Get message detection details

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/detections`

Returns detection details such as threat categories and sender information for non-benign messages.

### Responses

#### 200 Contains the email message details.

> Data is at `body["result"]`

```json
{
  "action": "*string*",
  "attachments": [
    {
      "content_type": "*string*",
      "detection": "*string*",
      "encrypted": "*boolean*",
      "name": "*string*",
      "size": "*integer*"
    }
  ],
  "final_disposition": "*string*",
  "headers": [
    {
      "name": "*string*",
      "value": "*string*"
    }
  ],
  "links": [
    {
      "href": "*string*",
      "text": "*string*"
    }
  ],
  "sender_info": {
    "as_name": "*string*",
    "as_number": "*integer*",
    "geo": "*string*",
    "ip": "*string*",
    "pld": "*string*"
  },
  "threat_categories": [
    {
      "description": "*string*",
      "id": "*integer*",
      "name": "*string*"
    }
  ],
  "validation": {
    "comment": "*string*",
    "dkim": "*string*",
    "dmarc": "*string*",
    "spf": "*string*"
  }
}
```

#### 4XX 

```json

```



## Move a message

**POST** `/accounts/{account_id}/email-security/investigate/{postfix_id}/move`



### Responses

#### 200 

> Data is at `body["result"]`

```json
[
  {
    "completed_timestamp": "*string*",
    "destination": "*string*",
    "item_count": "*integer*",
    "message_id": "*string*",
    "operation": "*string*",
    "recipient": "*string*",
    "status": "*string*",
    "success": "*boolean*"
  }
]
```

#### 4XX 

```json

```



## Get email preview

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/preview`

Returns a preview of the message body as a base64 encoded PNG image for non-benign messages.

### Responses

#### 200 Contains a preview of the email.

> Data is at `body["result"]`

```json
{
  "screenshot": "*string*"
}
```

#### 4XX 

```json

```



## Get raw email content

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/raw`

Returns the raw eml of any non-benign message.

### Responses

#### 200 Contains the raw content of the email.

> Data is at `body["result"]`

```json
{
  "raw": "*string*"
}
```

#### 4XX 

```json

```



## Change email classfication

**POST** `/accounts/{account_id}/email-security/investigate/{postfix_id}/reclassify`



### Responses

#### 202 

> Data is at `body["result"]`

```json
{}
```

#### 4XX 

```json

```



## Get email trace

**GET** `/accounts/{account_id}/email-security/investigate/{postfix_id}/trace`



### Responses

#### 200 Contains the email trace.

> Data is at `body["result"]`

```json
{
  "inbound": {
    "lines": [
      {
        "lineno": "*integer*",
        "message": "*string*",
        "ts": "*string*"
      }
    ],
    "pending": "*boolean*"
  },
  "outbound": {
    "lines": [
      {
        "lineno": "*integer*",
        "message": "*string*",
        "ts": "*string*"
      }
    ],
    "pending": "*boolean*"
  }
}
```

#### 4XX 

```json

```



## Get `PhishGuard` reports

**GET** `/accounts/{account_id}/email-security/phishguard/reports`



### Responses

#### 200 Contains a list of PhishGuard reports.

> Data is at `body["result"]`

```json
[
  {
    "content": "*string*",
    "disposition": "*string*",
    "fields": {
      "from": "*string*",
      "postfix_id": "*string*",
      "to": [
        "*string*"
      ],
      "ts": "*string*"
    },
    "id": "*integer*",
    "priority": "*string*",
    "tags": [
      {
        "category": null,
        "value": null
      }
    ],
    "title": "*string*",
    "ts": "*string*"
  }
]
```

#### 4XX 

```json

```



## Get reclassify submissions

**GET** `/accounts/{account_id}/email-security/submissions`

This endpoint returns information for submissions to made to reclassify emails.

### Responses

#### 200 

> Data is at `body["result"]`

```json
[
  {
    "original_disposition": "*string*",
    "original_edf_hash": "*string*",
    "outcome": "*string*",
    "outcome_disposition": "*string*",
    "requested_by": "*string*",
    "requested_disposition": "*string*",
    "requested_ts": "*string*",
    "status": "*string*",
    "subject": "*string*",
    "submission_id": "*string*",
    "type": "*string*"
  }
]
```

#### 4XX 

```json

```


