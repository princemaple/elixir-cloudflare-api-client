# Web3 Hostname

## Create Web3 Hostname

**POST** `/zones/{zone_id}/web3/hostnames`



### Responses

#### 200 Create Web3 Hostname response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "description": "*string*",
  "dnslink": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "status": "*string*",
  "target": "*string*"
}
```

#### 4XX Create Web3 Hostname error response (4XX).

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```

#### 5XX Create Web3 Hostname response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## List Web3 Hostnames

**GET** `/zones/{zone_id}/web3/hostnames`



### Responses

#### 200 List Web3 Hostnames response.

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "description": "*string*",
    "dnslink": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "status": "*string*",
    "target": "*string*"
  }
]
```

#### 4XX List Web3 Hostnames error response (4XX).

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```

#### 5XX List Web3 Hostnames response failure.

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Edit Web3 Hostname

**PATCH** `/zones/{zone_id}/web3/hostnames/{identifier}`



### Responses

#### 200 Edit Web3 Hostname response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "description": "*string*",
  "dnslink": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "status": "*string*",
  "target": "*string*"
}
```

#### 4XX Edit Web3 Hostname error response (4XX).

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```

#### 5XX Edit Web3 Hostname response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## Web3 Hostname Details

**GET** `/zones/{zone_id}/web3/hostnames/{identifier}`



### Responses

#### 200 Web3 Hostname Details response.

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "description": "*string*",
  "dnslink": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "status": "*string*",
  "target": "*string*"
}
```

#### 4XX Web3 Hostname Details error response (4XX).

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```

#### 5XX Web3 Hostname Details response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## Delete Web3 Hostname

**DELETE** `/zones/{zone_id}/web3/hostnames/{identifier}`



### Responses

#### 200 Delete Web3 Hostname response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete Web3 Hostname error response (4XX).

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```

#### 5XX Delete Web3 Hostname response failure.

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



## Update IPFS Universal Path Gateway Content List

**PUT** `/zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`



### Responses

#### 200 Update IPFS Universal Path Gateway Content List response.

> Data is at `body["result"]`

```json
{
  "action": "*string*"
}
```

#### 4XX Update IPFS Universal Path Gateway Content List error response (4XX).

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
  "result_info": {},
  "success": "*boolean*"
}
```

#### 5XX Update IPFS Universal Path Gateway Content List response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## IPFS Universal Path Gateway Content List Details

**GET** `/zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`



### Responses

#### 200 IPFS Universal Path Gateway Content List Details response.

> Data is at `body["result"]`

```json
{
  "action": "*string*"
}
```

#### 4XX IPFS Universal Path Gateway Content List Details error response (4XX).

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
  "result_info": {},
  "success": "*boolean*"
}
```

#### 5XX IPFS Universal Path Gateway Content List Details response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## Create IPFS Universal Path Gateway Content List Entry

**POST** `/zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`



### Responses

#### 200 Create IPFS Universal Path Gateway Content List Entry response.

> Data is at `body["result"]`

```json
{
  "content": "*string*",
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "type": "*string*"
}
```

#### 4XX Create IPFS Universal Path Gateway Content List Entry error response (4XX).

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
  "result_info": {},
  "success": "*boolean*"
}
```

#### 5XX Create IPFS Universal Path Gateway Content List Entry response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## List IPFS Universal Path Gateway Content List Entries

**GET** `/zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`



### Responses

#### 200 List IPFS Universal Path Gateway Content List Entries response.

> Data is at `body["result"]`

```json
{
  "entries": [
    {
      "content": null,
      "created_on": null,
      "description": null,
      "id": null,
      "modified_on": null,
      "type": null
    }
  ]
}
```

#### 4XX List IPFS Universal Path Gateway Content List Entries error response (4XX).

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```

#### 5XX List IPFS Universal Path Gateway Content List Entries response failure.

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Edit IPFS Universal Path Gateway Content List Entry

**PUT** `/zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`



### Responses

#### 200 Edit IPFS Universal Path Gateway Content List Entry response.

> Data is at `body["result"]`

```json
{
  "content": "*string*",
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "type": "*string*"
}
```

#### 4XX Edit IPFS Universal Path Gateway Content List Entry error response (4XX).

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
  "result_info": {},
  "success": "*boolean*"
}
```

#### 5XX Edit IPFS Universal Path Gateway Content List Entry response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## IPFS Universal Path Gateway Content List Entry Details

**GET** `/zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`



### Responses

#### 200 IPFS Universal Path Gateway Content List Entry Details response.

> Data is at `body["result"]`

```json
{
  "content": "*string*",
  "created_on": "*string*",
  "description": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "type": "*string*"
}
```

#### 4XX IPFS Universal Path Gateway Content List Entry Details error response (4XX).

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
  "result_info": {},
  "success": "*boolean*"
}
```

#### 5XX IPFS Universal Path Gateway Content List Entry Details response failure.

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
  "result_info": {},
  "success": "*boolean*"
}
```



## Delete IPFS Universal Path Gateway Content List Entry

**DELETE** `/zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`



### Responses

#### 200 Delete IPFS Universal Path Gateway Content List Entry response.

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete IPFS Universal Path Gateway Content List Entry error response (4XX).

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

#### 5XX Delete IPFS Universal Path Gateway Content List Entry response failure.

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


