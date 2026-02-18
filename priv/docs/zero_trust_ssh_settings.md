# Zero Trust SSH Settings

## Update Zero Trust SSH settings

**PUT** `/accounts/{account_id}/gateway/audit_ssh_settings`

Update Zero Trust Audit SSH and SSH with Access for Infrastructure settings for an account.

### Responses

#### 200 Update Zero Trust SSH settings response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "public_key": "*string*",
  "seed_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Update Zero Trust SSH settings response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Get Zero Trust SSH settings

**GET** `/accounts/{account_id}/gateway/audit_ssh_settings`

Retrieve all Zero Trust Audit SSH and SSH with Access for Infrastructure settings for an account.

### Responses

#### 200 Get Zero Trust SSH settings response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "public_key": "*string*",
  "seed_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Get Zero Trust SSH settings response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```



## Rotate Zero Trust SSH account seed

**POST** `/accounts/{account_id}/gateway/audit_ssh_settings/rotate_seed`

Rotate the SSH account seed that generates the host key identity when connecting through the Cloudflare SSH Proxy.

### Responses

#### 200 Rotate Zero Trust SSH account seed response.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "public_key": "*string*",
  "seed_id": "*string*",
  "updated_at": "*string*"
}
```

#### 4XX Rotate Zero Trust SSH account seed response failure.

```json
{
  "errors": {},
  "messages": {},
  "result": {},
  "success": "*boolean*"
}
```


