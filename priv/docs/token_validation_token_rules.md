# Token Validation Token Rules

## Create a token validation rule

**POST** `/zones/{zone_id}/token_validation/rules`

Create a token validation rule.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List token validation rules

**GET** `/zones/{zone_id}/token_validation/rules`

List token validation rules

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Bulk create token validation rules

**POST** `/zones/{zone_id}/token_validation/rules/bulk`

Create zone token validation rules.

A request can create multiple Token Validation Rules.


### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Bulk edit token validation rules

**PATCH** `/zones/{zone_id}/token_validation/rules/bulk`

Edit token validation rules.

A request can update multiple Token Validation Rules.

Rules can be re-ordered using the `position` field.

Returns all updated rules.


### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Preview operations covered by a Token Validation rule

**POST** `/zones/{zone_id}/token_validation/rules/preview`

Preview operations covered by a Token Validation rule.

The API will return all operations on a zone annotated with an additional `state` field.
Operations with an `included` `state` will be covered by a Token Validation Rule.


### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Edit a zone token validation rule

**PATCH** `/zones/{zone_id}/token_validation/rules/{rule_id}`

Edit a zone token validation rule.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Get a zone token validation rule

**GET** `/zones/{zone_id}/token_validation/rules/{rule_id}`

Get a zone token validation rule.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Delete a zone token validation rule

**DELETE** `/zones/{zone_id}/token_validation/rules/{rule_id}`

Delete a zone token validation rule.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```


