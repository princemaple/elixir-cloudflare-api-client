# Zone Rulesets

## Create a zone ruleset

**POST** `/zones/{zone_id}/rulesets`

Creates a ruleset at the zone level.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List zone rulesets

**GET** `/zones/{zone_id}/rulesets`

Fetches all rulesets at the zone level.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Update a zone entry point ruleset

**PUT** `/zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint`

Updates a zone entry point ruleset, creating a new version.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Get a zone entry point ruleset

**GET** `/zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint`

Fetches the latest version of the zone entry point ruleset for a given phase.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List a zone entry point ruleset's versions

**GET** `/zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions`

Fetches the versions of a zone entry point ruleset.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Get a zone entry point ruleset version

**GET** `/zones/{zone_id}/rulesets/phases/{ruleset_phase}/entrypoint/versions/{ruleset_version}`

Fetches a specific version of a zone entry point ruleset.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Update a zone ruleset

**PUT** `/zones/{zone_id}/rulesets/{ruleset_id}`

Updates a zone ruleset, creating a new version.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Get a zone ruleset

**GET** `/zones/{zone_id}/rulesets/{ruleset_id}`

Fetches the latest version of a zone ruleset.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Delete a zone ruleset

**DELETE** `/zones/{zone_id}/rulesets/{ruleset_id}`

Deletes all versions of an existing zone ruleset.

### Responses

#### 204 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Create a zone ruleset rule

**POST** `/zones/{zone_id}/rulesets/{ruleset_id}/rules`

Adds a new rule to a zone ruleset. The rule will be added to the end of the existing list of rules in the ruleset by default.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Update a zone ruleset rule

**PATCH** `/zones/{zone_id}/rulesets/{ruleset_id}/rules/{rule_id}`

Updates an existing rule in a zone ruleset.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Delete a zone ruleset rule

**DELETE** `/zones/{zone_id}/rulesets/{ruleset_id}/rules/{rule_id}`

Deletes an existing rule from a zone ruleset.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List a zone ruleset's versions

**GET** `/zones/{zone_id}/rulesets/{ruleset_id}/versions`

Fetches the versions of a zone ruleset.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Get a zone ruleset version

**GET** `/zones/{zone_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`

Fetches a specific version of a zone ruleset.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## Delete a zone ruleset version

**DELETE** `/zones/{zone_id}/rulesets/{ruleset_id}/versions/{ruleset_version}`

Deletes an existing version of a zone ruleset.

### Responses

#### 204 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```



## List a zone ruleset version's rules by tag

**GET** `/zones/{zone_id}/rulesets/{ruleset_id}/versions/{ruleset_version}/by_tag/{rule_tag}`

Fetches the rules of a managed zone ruleset version for a given tag.

### Responses

#### 200 

> Data is at `body["result"]`

```json

```

#### 4XX 

```json

```


