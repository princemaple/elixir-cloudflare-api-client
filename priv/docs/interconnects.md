# Interconnects

## Create a new interconnect

**POST** `/accounts/{account_id}/cni/interconnects`



### Responses

#### 200 Information about the new interconnect

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json

```

#### 500 Internal server error

```json

```



## List existing interconnects

**GET** `/accounts/{account_id}/cni/interconnects`



### Responses

#### 200 List of matching interconnect objects

> Data is at `body["result"]`

```json
{
  "items": [
    {}
  ],
  "next": "*integer*"
}
```

#### 400 Bad request

```json

```

#### 500 Internal server error

```json

```



## Get information about an interconnect object

**GET** `/accounts/{account_id}/cni/interconnects/{icon}`



### Responses

#### 200 Information about the specified interconnect

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json

```

#### 404 Interconnect not found

```json

```

#### 500 Internal server error

```json

```



## Delete an interconnect object

**DELETE** `/accounts/{account_id}/cni/interconnects/{icon}`



### Responses

#### 200 Successfully deleted interconnect

> Data is at `body["result"]`

```json

```

#### 400 Bad request

```json

```

#### 404 Interconnect not found

```json

```

#### 500 Internal server error

```json

```



## Generate the Letter of Authorization (LOA) for a given interconnect

**GET** `/accounts/{account_id}/cni/interconnects/{icon}/loa`



### Responses

#### 200 Generated LOA in PDF format

> Data is at `body["result"]`

```json

```

#### 400 Bad request

```json

```

#### 404 Interconnect not found

```json

```

#### 500 Internal server error

```json

```



## Get the current status of an interconnect object

**GET** `/accounts/{account_id}/cni/interconnects/{icon}/status`



### Responses

#### 200 Current interconnect status

> Data is at `body["result"]`

```json
{}
```

#### 400 Bad request

```json

```

#### 404 Interconnect not found

```json

```

#### 500 Internal server error

```json

```


