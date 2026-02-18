# DLP Datasets

## Create a new dataset

**POST** `/accounts/{account_id}/dlp/datasets`



### Responses

#### 200 Dataset created successfully.

> Data is at `body["result"]`

```json
{
  "dataset": {
    "case_sensitive": "*boolean*",
    "columns": [
      {
        "entry_id": null,
        "header_name": null,
        "num_cells": null,
        "upload_status": null
      }
    ],
    "created_at": "*string*",
    "description": "*string*",
    "encoding_version": "*integer*",
    "id": "*string*",
    "name": "*string*",
    "num_cells": "*integer*",
    "secret": "*boolean*",
    "status": "*string*",
    "updated_at": "*string*",
    "uploads": [
      {
        "num_cells": null,
        "status": null,
        "version": null
      }
    ]
  },
  "encoding_version": "*integer*",
  "max_cells": "*integer*",
  "secret": "*string*",
  "version": "*integer*"
}
```

#### 4XX Dataset creation failed.

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



## Fetch all datasets

**GET** `/accounts/{account_id}/dlp/datasets`



### Responses

#### 200 Datasets read successfully.

> Data is at `body["result"]`

```json
[
  {
    "case_sensitive": "*boolean*",
    "columns": [
      {
        "entry_id": null,
        "header_name": null,
        "num_cells": null,
        "upload_status": null
      }
    ],
    "created_at": "*string*",
    "description": "*string*",
    "encoding_version": "*integer*",
    "id": "*string*",
    "name": "*string*",
    "num_cells": "*integer*",
    "secret": "*boolean*",
    "status": "*string*",
    "updated_at": "*string*",
    "uploads": [
      {
        "num_cells": null,
        "status": null,
        "version": null
      }
    ]
  }
]
```

#### 4XX Datasets read failed.

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



## Update details about a dataset

**PUT** `/accounts/{account_id}/dlp/datasets/{dataset_id}`



### Responses

#### 200 Dataset updated successfully.

> Data is at `body["result"]`

```json
{
  "case_sensitive": "*boolean*",
  "columns": [
    {
      "entry_id": "*string*",
      "header_name": "*string*",
      "num_cells": "*integer*",
      "upload_status": "*string*"
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "encoding_version": "*integer*",
  "id": "*string*",
  "name": "*string*",
  "num_cells": "*integer*",
  "secret": "*boolean*",
  "status": "*string*",
  "updated_at": "*string*",
  "uploads": [
    {
      "num_cells": "*integer*",
      "status": "*string*",
      "version": "*integer*"
    }
  ]
}
```

#### 4XX Dataset update failed.

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



## Fetch a specific dataset

**GET** `/accounts/{account_id}/dlp/datasets/{dataset_id}`



### Responses

#### 200 Dataset read successfully.

> Data is at `body["result"]`

```json
{
  "case_sensitive": "*boolean*",
  "columns": [
    {
      "entry_id": "*string*",
      "header_name": "*string*",
      "num_cells": "*integer*",
      "upload_status": "*string*"
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "encoding_version": "*integer*",
  "id": "*string*",
  "name": "*string*",
  "num_cells": "*integer*",
  "secret": "*boolean*",
  "status": "*string*",
  "updated_at": "*string*",
  "uploads": [
    {
      "num_cells": "*integer*",
      "status": "*string*",
      "version": "*integer*"
    }
  ]
}
```

#### 4XX Dataset read failed.

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



## Delete a dataset

**DELETE** `/accounts/{account_id}/dlp/datasets/{dataset_id}`

This deletes all versions of the dataset.

### Responses

#### 200 Dataset deleted successfully.

> Data is at `body["result"]`

```json

```

#### 4XX Dataset delete failed.

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



## Prepare to upload a new version of a dataset

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/upload`



### Responses

#### 200 Dataset version created successfully.

> Data is at `body["result"]`

```json
{
  "case_sensitive": "*boolean*",
  "columns": [
    {
      "entry_id": "*string*",
      "header_name": "*string*",
      "num_cells": "*integer*",
      "upload_status": "*string*"
    }
  ],
  "encoding_version": "*integer*",
  "max_cells": "*integer*",
  "secret": "*string*",
  "version": "*integer*"
}
```

#### 4XX Dataset version creation failed.

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



## Upload a new version of a dataset

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/upload/{version}`

This is used for single-column EDMv1 and Custom Word Lists. The EDM format
can only be created in the Cloudflare dashboard. For other clients, this
operation can only be used for non-secret Custom Word Lists. The body must
be a UTF-8 encoded, newline (NL or CRNL) separated list of words to be matched.

### Responses

#### 200 Dataset version uploaded successfully.

> Data is at `body["result"]`

```json
{
  "case_sensitive": "*boolean*",
  "columns": [
    {
      "entry_id": "*string*",
      "header_name": "*string*",
      "num_cells": "*integer*",
      "upload_status": "*string*"
    }
  ],
  "created_at": "*string*",
  "description": "*string*",
  "encoding_version": "*integer*",
  "id": "*string*",
  "name": "*string*",
  "num_cells": "*integer*",
  "secret": "*boolean*",
  "status": "*string*",
  "updated_at": "*string*",
  "uploads": [
    {
      "num_cells": "*integer*",
      "status": "*string*",
      "version": "*integer*"
    }
  ]
}
```

#### 4XX Dataset version upload failed.

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



## Sets the column information for a multi-column upload

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/versions/{version}`

This is used for multi-column EDMv2 datasets. The EDMv2 format can only be
created in the Cloudflare dashboard. The columns in the response appear in
the same order as in the request.

### Responses

#### 200 Dataset columns created successfully.

> Data is at `body["result"]`

```json
[
  {
    "entry_id": "*string*",
    "header_name": "*string*",
    "num_cells": "*integer*",
    "upload_status": "*string*"
  }
]
```

#### 4XX Failed to create dataset columns.

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



## Upload a new version of a multi-column dataset

**POST** `/accounts/{account_id}/dlp/datasets/{dataset_id}/versions/{version}/entries/{entry_id}`

This is used for multi-column EDMv2 datasets. The EDMv2 format can only be
created in the Cloudflare dashboard.

### Responses

#### 200 Dataset column uploaded successfully.

> Data is at `body["result"]`

```json
{
  "entry_id": "*string*",
  "header_name": "*string*",
  "num_cells": "*integer*",
  "upload_status": "*string*"
}
```

#### 4XX Failed to upload dataset column.

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


