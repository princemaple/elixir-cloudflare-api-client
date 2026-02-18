# User's Invites

## List Invitations

**GET** `/user/invites`

Lists all invitations associated with my user.

### Responses

#### 200 List Invitations response

> Data is at `body["result"]`

```json
[
  {
    "expires_on": "*string*",
    "id": "*string*",
    "invited_by": "*string*",
    "invited_member_email": "*string*",
    "invited_member_id": "*string*",
    "invited_on": "*string*",
    "organization_id": "*string*",
    "organization_is_enforcing_twofactor": "*boolean*",
    "organization_name": "*string*",
    "roles": [
      "*string*"
    ],
    "status": null
  }
]
```

#### 4XX List Invitations response failure

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



## Respond to Invitation

**PATCH** `/user/invites/{invite_id}`

Responds to an invitation.

### Responses

#### 200 Respond to Invitation response

> Data is at `body["result"]`

```json
{
  "expires_on": "*string*",
  "id": "*string*",
  "invited_by": "*string*",
  "invited_member_email": "*string*",
  "invited_member_id": "*string*",
  "invited_on": "*string*",
  "organization_id": "*string*",
  "organization_is_enforcing_twofactor": "*boolean*",
  "organization_name": "*string*",
  "roles": [
    "*string*"
  ],
  "status": null
}
```

#### 4XX Respond to Invitation response failure

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



## Invitation Details

**GET** `/user/invites/{invite_id}`

Gets the details of an invitation.

### Responses

#### 200 Invitation Details response

> Data is at `body["result"]`

```json
{
  "expires_on": "*string*",
  "id": "*string*",
  "invited_by": "*string*",
  "invited_member_email": "*string*",
  "invited_member_id": "*string*",
  "invited_on": "*string*",
  "organization_id": "*string*",
  "organization_is_enforcing_twofactor": "*boolean*",
  "organization_name": "*string*",
  "roles": [
    "*string*"
  ],
  "status": null
}
```

#### 4XX Invitation Details response failure

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


