# Zero Trust applications review status

## Update applications review statuses

**PUT** `/accounts/{account_id}/gateway/apps/review_status`

Update the statuses of your applications.

### Responses

#### 200 Update applications review status response.

> Data is at `body["result"]`

```json
{
  "approved_apps": [
    "*integer*"
  ],
  "created_at": "*string*",
  "in_review_apps": [
    "*integer*"
  ],
  "unapproved_apps": [
    "*integer*"
  ],
  "updated_at": "*string*"
}
```

#### 4XX Update applications review status failure response.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## List applications review statuses

**GET** `/accounts/{account_id}/gateway/apps/review_status`

Retrieve the statuses of your applications.

### Responses

#### 200 List applications review status response.

> Data is at `body["result"]`

```json
{
  "approved_apps": [
    "*integer*"
  ],
  "created_at": "*string*",
  "in_review_apps": [
    "*integer*"
  ],
  "unapproved_apps": [
    "*integer*"
  ],
  "updated_at": "*string*"
}
```

#### 4XX List applications review status failure response.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


