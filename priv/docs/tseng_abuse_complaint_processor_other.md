# tseng-abuse-complaint-processor_other

## List abuse reports

**GET** `/accounts/{account_id}/abuse-reports`

List the abuse reports for a given account

### Responses

#### 200 Abuse report list successful

> Data is at `body["result"]`

```json
{
  "reports": [
    {
      "cdate": "*string*",
      "domain": "*string*",
      "id": "*string*",
      "justification": "*string*",
      "mitigation_summary": {
        "accepted_url_count": null,
        "active_count": null,
        "external_host_notified": null,
        "in_review_count": null,
        "pending_count": null
      },
      "original_work": "*string*",
      "status": "*string*",
      "submitter": {
        "company": null,
        "email": null,
        "name": null,
        "telephone": null
      },
      "type": "*string*",
      "urls": [
        "*string*"
      ]
    }
  ]
}
```

#### 500 Failed to retrieve abuse reports

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## List abuse report emails

**GET** `/accounts/{account_id}/abuse-reports/{report_id}/emails`

List emails sent to the customer for an abuse report. Returns all successful customer emails sent for the specified abuse report. Does not include emails sent to hosts or submitters.

### Responses

#### 200 List abuse report emails successful

> Data is at `body["result"]`

```json
{
  "emails": [
    {
      "body": "*string*",
      "id": "*string*",
      "recipient": "*string*",
      "sent_at": "*string*",
      "subject": "*string*"
    }
  ]
}
```

#### 400 Bad request - invalid parameters or report not found

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Failed to list abuse report emails

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## List abuse report mitigations

**GET** `/accounts/{account_id}/abuse-reports/{report_id}/mitigations`

List mitigations done to remediate the abuse report.

### Responses

#### 200 List abuse report mitigations successful

> Data is at `body["result"]`

```json
{
  "mitigations": [
    {
      "effective_date": "*string*",
      "entity_id": "*string*",
      "entity_type": "*string*",
      "id": "*string*",
      "status": "*string*",
      "type": "*string*"
    }
  ]
}
```

#### 500 Failed to list abuse report mitigations

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Request review on mitigations

**POST** `/accounts/{account_id}/abuse-reports/{report_id}/mitigations/appeal`

Request a review for mitigations on an account.

### Responses

#### 200 Mitigation appeals received

> Data is at `body["result"]`

```json
[
  {
    "effective_date": "*string*",
    "entity_id": "*string*",
    "entity_type": "*string*",
    "id": "*string*",
    "status": "*string*",
    "type": "*string*"
  }
]
```

#### 500 Failed to request review on delayed action.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Submit an abuse report

**POST** `/accounts/{account_id}/abuse-reports/{report_param}`

Submit the Abuse Report of a particular type

### Responses

#### 200 Report submitted successfully

> Data is at `body["result"]`

```json
"*string*"
```

#### 400 Report submitted with an error

```json
{
  "error_code": "*string*",
  "msg": "*string*",
  "request": {
    "act": "*string*"
  },
  "result": "*string*"
}
```

#### 500 Report submitted with an error

```json
{
  "error_code": "*string*",
  "msg": "*string*",
  "request": {
    "act": "*string*"
  },
  "result": "*string*"
}
```



## Abuse Report Details

**GET** `/accounts/{account_id}/abuse-reports/{report_param}`

Retrieve the details of an abuse report.

### Responses

#### 200 Report submitted successfully

> Data is at `body["result"]`

```json
{
  "cdate": "*string*",
  "domain": "*string*",
  "id": "*string*",
  "justification": "*string*",
  "mitigation_summary": {
    "accepted_url_count": "*integer*",
    "active_count": "*integer*",
    "external_host_notified": "*boolean*",
    "in_review_count": "*integer*",
    "pending_count": "*integer*"
  },
  "original_work": "*string*",
  "status": "*string*",
  "submitter": {
    "company": "*string*",
    "email": "*string*",
    "name": "*string*",
    "telephone": "*string*"
  },
  "type": "*string*",
  "urls": [
    "*string*"
  ]
}
```

#### 400 Report submitted with an error

```json
{
  "errors": [
    {
      "code": null,
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "result": {
    "cdate": "*string*",
    "domain": "*string*",
    "id": "*string*",
    "justification": "*string*",
    "mitigation_summary": {
      "accepted_url_count": "*integer*",
      "active_count": "*integer*",
      "external_host_notified": "*boolean*",
      "in_review_count": "*integer*",
      "pending_count": "*integer*"
    },
    "original_work": "*string*",
    "status": "*string*",
    "submitter": {
      "company": "*string*",
      "email": "*string*",
      "name": "*string*",
      "telephone": "*string*"
    },
    "type": "*string*",
    "urls": [
      "*string*"
    ]
  },
  "success": "*boolean*"
}
```

#### 500 Report submitted with an error

```json
{
  "errors": [
    {
      "code": null,
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "message": "*string*"
    }
  ],
  "result": {
    "cdate": "*string*",
    "domain": "*string*",
    "id": "*string*",
    "justification": "*string*",
    "mitigation_summary": {
      "accepted_url_count": "*integer*",
      "active_count": "*integer*",
      "external_host_notified": "*boolean*",
      "in_review_count": "*integer*",
      "pending_count": "*integer*"
    },
    "original_work": "*string*",
    "status": "*string*",
    "submitter": {
      "company": "*string*",
      "email": "*string*",
      "name": "*string*",
      "telephone": "*string*"
    },
    "type": "*string*",
    "urls": [
      "*string*"
    ]
  },
  "success": "*boolean*"
}
```


