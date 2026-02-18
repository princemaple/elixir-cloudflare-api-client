# Token Validation Token Configuration

## Create a new Token Validation configuration

**POST** `/zones/{zone_id}/token_validation/config`

Create a new Token Validation configuration

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List token validation configurations

**GET** `/zones/{zone_id}/token_validation/config`

Lists all token validation configurations for this zone

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Edit an existing Token Configuration

**PATCH** `/zones/{zone_id}/token_validation/config/{config_id}`

Edit fields of an existing Token Configuration

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Get a single Token Configuration

**GET** `/zones/{zone_id}/token_validation/config/{config_id}`

Get a single Token Configuration

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Delete Token Configuration

**DELETE** `/zones/{zone_id}/token_validation/config/{config_id}`

Delete Token Configuration

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Update Token Configuration credentials

**PUT** `/zones/{zone_id}/token_validation/config/{config_id}/credentials`

Update Token Configuration credentials

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```


