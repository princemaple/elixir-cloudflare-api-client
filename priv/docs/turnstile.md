# Turnstile

## Create a Turnstile Widget

**POST** `/accounts/{account_id}/challenges/widgets`

Lists challenge widgets.

### Responses

#### 200 Create Turnstile Widget Response

> Data is at `body["result"]`

```json
{
  "bot_fight_mode": "*boolean*",
  "clearance_level": "*string*",
  "created_on": "*string*",
  "domains": [
    "*string*"
  ],
  "ephemeral_id": "*boolean*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "offlabel": "*boolean*",
  "region": "*string*",
  "secret": "*string*",
  "sitekey": "*string*"
}
```

#### 4XX Create Turnstile Widget Response Error

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



## List Turnstile Widgets

**GET** `/accounts/{account_id}/challenges/widgets`

Lists all turnstile widgets of an account.

### Responses

#### 200 List Turnstile Widgets

> Data is at `body["result"]`

```json
[
  {
    "bot_fight_mode": "*boolean*",
    "clearance_level": "*string*",
    "created_on": "*string*",
    "domains": [
      "*string*"
    ],
    "ephemeral_id": "*boolean*",
    "mode": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "offlabel": "*boolean*",
    "region": "*string*",
    "sitekey": "*string*"
  }
]
```

#### 4XX List Turnstile Widgets Error

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



## Update a Turnstile Widget

**PUT** `/accounts/{account_id}/challenges/widgets/{sitekey}`

Update the configuration of a widget.

### Responses

#### 200 Update Turnstile Widget Response

> Data is at `body["result"]`

```json
{
  "bot_fight_mode": "*boolean*",
  "clearance_level": "*string*",
  "created_on": "*string*",
  "domains": [
    "*string*"
  ],
  "ephemeral_id": "*boolean*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "offlabel": "*boolean*",
  "region": "*string*",
  "secret": "*string*",
  "sitekey": "*string*"
}
```

#### 4XX Update Turnstile Widget Response Error

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



## Turnstile Widget Details

**GET** `/accounts/{account_id}/challenges/widgets/{sitekey}`

Show a single challenge widget configuration.

### Responses

#### 200 Turnstile Widget Details Response

> Data is at `body["result"]`

```json
{
  "bot_fight_mode": "*boolean*",
  "clearance_level": "*string*",
  "created_on": "*string*",
  "domains": [
    "*string*"
  ],
  "ephemeral_id": "*boolean*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "offlabel": "*boolean*",
  "region": "*string*",
  "secret": "*string*",
  "sitekey": "*string*"
}
```

#### 4XX Turnstile Widget Details Response Error

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



## Delete a Turnstile Widget

**DELETE** `/accounts/{account_id}/challenges/widgets/{sitekey}`

Destroy a Turnstile Widget.

### Responses

#### 200 Delete Turnstile Widget Response

> Data is at `body["result"]`

```json
{
  "bot_fight_mode": "*boolean*",
  "clearance_level": "*string*",
  "created_on": "*string*",
  "domains": [
    "*string*"
  ],
  "ephemeral_id": "*boolean*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "offlabel": "*boolean*",
  "region": "*string*",
  "secret": "*string*",
  "sitekey": "*string*"
}
```

#### 4XX Delete Turnstile Widget Response Error

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



## Rotate Secret for a Turnstile Widget

**POST** `/accounts/{account_id}/challenges/widgets/{sitekey}/rotate_secret`

Generate a new secret key for this widget. If `invalidate_immediately`
is set to `false`, the previous secret remains valid for 2 hours.

Note that secrets cannot be rotated again during the grace period.


### Responses

#### 200 Rotate Secret Response

> Data is at `body["result"]`

```json
{
  "bot_fight_mode": "*boolean*",
  "clearance_level": "*string*",
  "created_on": "*string*",
  "domains": [
    "*string*"
  ],
  "ephemeral_id": "*boolean*",
  "mode": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "offlabel": "*boolean*",
  "region": "*string*",
  "secret": "*string*",
  "sitekey": "*string*"
}
```

#### 4XX Rotate Secret Response Error

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


