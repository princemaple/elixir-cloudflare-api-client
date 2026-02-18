# Apps

## Create App

**POST** `/accounts/{account_id}/realtime/kit/apps`

Create new app for your account

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "app": {
      "created_at": "*string*",
      "id": "*string*",
      "name": "*string*"
    }
  },
  "success": "*boolean*"
}
```



## Fetch all apps

**GET** `/accounts/{account_id}/realtime/kit/apps`

Fetch all apps for your account

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "created_at": "*string*",
      "id": "*string*",
      "name": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


