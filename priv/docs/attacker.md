# Attacker

## Lists attackers across multiple datasets

**GET** `/accounts/{account_id}/cloudforce-one/events/attackers`



### Responses

#### 200 Returns a list of attackers.

> Data is at `body["result"]`

```json
{
  "items": {
    "type": "*string*"
  },
  "type": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


