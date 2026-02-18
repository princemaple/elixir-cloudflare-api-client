# Schema Validation

## Upload a schema

**POST** `/zones/{zone_id}/schema_validation/schemas`



### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List all uploaded schemas

**GET** `/zones/{zone_id}/schema_validation/schemas`



### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List hosts covered by uploaded schemas

**GET** `/zones/{zone_id}/schema_validation/schemas/hosts`



### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Edit details of a schema to enable validation

**PATCH** `/zones/{zone_id}/schema_validation/schemas/{schema_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Get details of a schema

**GET** `/zones/{zone_id}/schema_validation/schemas/{schema_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Delete a schema

**DELETE** `/zones/{zone_id}/schema_validation/schemas/{schema_id}`



### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Retrieve all operations from the schema.

**GET** `/zones/{zone_id}/schema_validation/schemas/{schema_id}/operations`

Retrieves all operations from the schema. Operations that already exist in API Shield Endpoint Management will be returned as full operations.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```


