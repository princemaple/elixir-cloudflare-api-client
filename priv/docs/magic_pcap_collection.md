# Magic PCAP collection

## Create PCAP request

**POST** `/accounts/{account_id}/pcaps`

Create new PCAP request for account.

### Responses

#### 200 Create PCAP request response.

> Data is at `body["result"]`

```json
null
```

#### default Create PCAP request response failure.

```json
null
```



## List packet capture requests

**GET** `/accounts/{account_id}/pcaps`

Lists all packet capture requests for an account.

### Responses

#### 200 List packet capture requests response.

> Data is at `body["result"]`

```json
[
  null
]
```

#### default List packet capture requests response failure.

```json
null
```



## Add buckets for full packet captures

**POST** `/accounts/{account_id}/pcaps/ownership`

Adds an AWS or GCP bucket to use with full packet captures.

### Responses

#### 200 Add buckets for full packet captures response.

> Data is at `body["result"]`

```json
{
  "destination_conf": "*string*",
  "filename": "*string*",
  "id": "*string*",
  "status": "*string*",
  "submitted": "*string*",
  "validated": "*string*"
}
```

#### default Add buckets for full packet captures response failure.

```json
null
```



## List PCAPs Bucket Ownership

**GET** `/accounts/{account_id}/pcaps/ownership`

List all buckets configured for use with PCAPs API.

### Responses

#### 200 List PCAPs Bucket Ownership response.

> Data is at `body["result"]`

```json
[
  {
    "destination_conf": "*string*",
    "filename": "*string*",
    "id": "*string*",
    "status": "*string*",
    "submitted": "*string*",
    "validated": "*string*"
  }
]
```

#### default List PCAPs Bucket Ownership response failure.

```json
null
```



## Validate buckets for full packet captures

**POST** `/accounts/{account_id}/pcaps/ownership/validate`

Validates buckets added to the packet captures API.

### Responses

#### 200 Validate buckets for full packet captures response.

> Data is at `body["result"]`

```json
{
  "destination_conf": "*string*",
  "filename": "*string*",
  "id": "*string*",
  "status": "*string*",
  "submitted": "*string*",
  "validated": "*string*"
}
```

#### default Validate buckets for full packet captures response failure.

```json
null
```



## Delete buckets for full packet captures

**DELETE** `/accounts/{account_id}/pcaps/ownership/{ownership_id}`

Deletes buckets added to the packet captures API.

### Responses

#### 204 Delete buckets for full packet captures response.

> Data is at `body["result"]`

```json

```

#### default Delete buckets for full packet captures response failure.

```json

```



## Get PCAP request

**GET** `/accounts/{account_id}/pcaps/{pcap_id}`

Get information for a PCAP request by id.

### Responses

#### 200 Get PCAP request response.

> Data is at `body["result"]`

```json
null
```

#### default Get PCAP request response failure.

```json
null
```



## Download Simple PCAP

**GET** `/accounts/{account_id}/pcaps/{pcap_id}/download`

Download PCAP information into a file. Response is a binary PCAP file.

### Responses

#### 200 Download Simple PCAP response.

> Data is at `body["result"]`

```json

```

#### default Download Simple PCAP response failure.

```json

```



## Stop full PCAP

**PUT** `/accounts/{account_id}/pcaps/{pcap_id}/stop`

Stop full PCAP.

### Responses

#### 204 Stop full PCAP response.

> Data is at `body["result"]`

```json

```

#### default Stop full PCAP response failure.

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


