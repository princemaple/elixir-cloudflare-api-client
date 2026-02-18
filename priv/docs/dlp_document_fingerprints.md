# DLP Document Fingerprints

## Creates a new document fingerprint.

**POST** `/accounts/{account_id}/dlp/document_fingerprints`



### Responses

#### 200 Document fingerprint created successfully.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "entry_id": "*string*",
  "file_name": "*string*",
  "id": "*string*",
  "match_percent": "*integer*",
  "name": "*string*",
  "status": "*string*",
  "updated_at": "*string*",
  "version": "*integer*"
}
```

#### 4XX Document fingerprint creation failed.

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



## Retrieve data about all document fingerprints.

**GET** `/accounts/{account_id}/dlp/document_fingerprints`



### Responses

#### 200 Document fingerprint read was successful.

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "entry_id": "*string*",
    "file_name": "*string*",
    "id": "*string*",
    "match_percent": "*integer*",
    "name": "*string*",
    "status": "*string*",
    "updated_at": "*string*",
    "version": "*integer*"
  }
]
```

#### 4XX Document fingerprint read failed.

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



## Uploads a new version for a document fingerprint.

**PUT** `/accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`



### Responses

#### 200 File uploaded successfully.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "entry_id": "*string*",
  "file_name": "*string*",
  "id": "*string*",
  "match_percent": "*integer*",
  "name": "*string*",
  "status": "*string*",
  "updated_at": "*string*",
  "version": "*integer*"
}
```

#### 4XX Failed to upload file.

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



## Update the attributes of a single document fingerprint.

**POST** `/accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`



### Responses

#### 200 Document fingerprint read was successful.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "entry_id": "*string*",
  "file_name": "*string*",
  "id": "*string*",
  "match_percent": "*integer*",
  "name": "*string*",
  "status": "*string*",
  "updated_at": "*string*",
  "version": "*integer*"
}
```

#### 4XX Document fingerprint read failed.

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



## Retrieve data about a specific document fingerprint.

**GET** `/accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`



### Responses

#### 200 Document fingerprint read was successful.

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "description": "*string*",
  "entry_id": "*string*",
  "file_name": "*string*",
  "id": "*string*",
  "match_percent": "*integer*",
  "name": "*string*",
  "status": "*string*",
  "updated_at": "*string*",
  "version": "*integer*"
}
```

#### 4XX Document fingerprint read failed.

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



## Delete a single document fingerprint.

**DELETE** `/accounts/{account_id}/dlp/document_fingerprints/{document_fingerprint_id}`



### Responses

#### 200 Document fingerprint delete was successful.

> Data is at `body["result"]`

```json

```

#### 4XX Document fingerprint delete failed.

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


