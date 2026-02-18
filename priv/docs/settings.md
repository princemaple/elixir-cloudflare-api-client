# Settings

## Update the current settings for the active account

**PUT** `/accounts/{account_id}/cni/settings`



### Responses

#### 200 The active account settings values

> Data is at `body["result"]`

```json
{
  "default_asn": "*integer*"
}
```

#### 400 Bad request

```json

```

#### 404 Account not found

```json

```

#### 500 Internal server error

```json

```



## Get the current settings for the active account

**GET** `/accounts/{account_id}/cni/settings`



### Responses

#### 200 The active account settings values

> Data is at `body["result"]`

```json
{
  "default_asn": "*integer*"
}
```

#### 400 Bad request

```json

```

#### 404 Account not found

```json

```

#### 500 Internal server error

```json

```


