# Event

## Filter and list events

**GET** `/accounts/{account_id}/cloudforce-one/events`

When `datasetId` is unspecified, events will be listed from the `Cloudforce One Threat Events` dataset. To list existing datasets (and their IDs), use the [`List Datasets`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/list/) endpoint). Also, must provide query parameters.

### Responses

#### 200 Returns a list of events.

> Data is at `body["result"]`

```json
[
  {
    "attacker": "*string*",
    "attackerCountry": "*string*",
    "category": "*string*",
    "datasetId": "*string*",
    "date": "*string*",
    "event": "*string*",
    "hasChildren": "*boolean*",
    "indicator": "*string*",
    "indicatorType": "*string*",
    "indicatorTypeId": "*number*",
    "insight": "*string*",
    "killChain": "*number*",
    "mitreAttack": [
      "*string*"
    ],
    "numReferenced": "*number*",
    "numReferences": "*number*",
    "rawId": "*string*",
    "referenced": [
      "*string*"
    ],
    "referencedIds": [
      "*number*"
    ],
    "references": [
      "*string*"
    ],
    "referencesIds": [
      "*number*"
    ],
    "releasabilityId": "*string*",
    "tags": [
      "*string*"
    ],
    "targetCountry": "*string*",
    "targetIndustry": "*string*",
    "tlp": "*string*",
    "uuid": "*string*"
  }
]
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Aggregate events by single or multiple columns with optional date filtering

**GET** `/accounts/{account_id}/cloudforce-one/events/aggregate`

Aggregate threat events by one or more columns (e.g., attacker, targetIndustry) with optional date filtering and daily grouping. Supports multi-dimensional aggregation for cross-analysis.

### Responses

#### 200 Returns aggregated event data.

> Data is at `body["result"]`

```json
{
  "aggregateBy": "*string*",
  "aggregations": [
    {
      "count": "*number*",
      "date": "*string*"
    }
  ],
  "dateRange": {
    "endDate": "*string*",
    "startDate": "*string*"
  },
  "total": "*number*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Creates a new event

**POST** `/accounts/{account_id}/cloudforce-one/events/create`

To create a dataset, see the [`Create Dataset`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/create/) endpoint. When `datasetId` parameter is unspecified, it will be created in a default dataset named `Cloudforce One Threat Events`.

### Responses

#### 200 Returns the created event.

> Data is at `body["result"]`

```json
{
  "attacker": "*string*",
  "attackerCountry": "*string*",
  "category": "*string*",
  "datasetId": "*string*",
  "date": "*string*",
  "event": "*string*",
  "hasChildren": "*boolean*",
  "indicator": "*string*",
  "indicatorType": "*string*",
  "indicatorTypeId": "*number*",
  "insight": "*string*",
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "numReferenced": "*number*",
  "numReferences": "*number*",
  "rawId": "*string*",
  "referenced": [
    "*string*"
  ],
  "referencedIds": [
    "*number*"
  ],
  "references": [
    "*string*"
  ],
  "referencesIds": [
    "*number*"
  ],
  "releasabilityId": "*string*",
  "tags": [
    "*string*"
  ],
  "targetCountry": "*string*",
  "targetIndustry": "*string*",
  "tlp": "*string*",
  "uuid": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Creates bulk events

**POST** `/accounts/{account_id}/cloudforce-one/events/create/bulk`

The `datasetId` parameter must be defined. To list existing datasets (and their IDs) in your account, use the [`List Datasets`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/list/) endpoint.

### Responses

#### 202 Accepted. Events created; indicators queued for async processing.

> Data is at `body["result"]`

```json
{
  "createBulkEventsRequestId": "*string*",
  "createdEvents": [
    {
      "eventIndex": "*number*",
      "shardId": "*string*",
      "uuid": "*string*"
    }
  ],
  "createdEventsCount": "*number*",
  "createdTagsCount": "*number*",
  "errorCount": "*number*",
  "errors": [
    {
      "error": "*string*",
      "eventIndex": "*number*"
    }
  ],
  "queuedIndicatorsCount": "*number*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Creates bulk DOS event with relationships and indicators

**POST** `/accounts/{account_id}/cloudforce-one/events/create/bulk/relationships`

This method is deprecated. Please use `event_create_bulk` instead

### Responses

#### 200 Returns the number of created bulk events with relationships.

> Data is at `body["result"]`

```json
{
  "createdEventsCount": "*number*",
  "createdIndicatorsCount": "*number*",
  "createdRelationshipsCount": "*number*",
  "errorCount": "*number*",
  "errors": [
    {
      "error": "*string*",
      "eventIndex": "*number*"
    }
  ]
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Reads an event

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/events/{event_id}`

Retrieves a specific event by its UUID.

### Responses

#### 200 Returns the event.

> Data is at `body["result"]`

```json
{
  "attacker": "*string*",
  "attackerCountry": "*string*",
  "category": "*string*",
  "datasetId": "*string*",
  "date": "*string*",
  "event": "*string*",
  "hasChildren": "*boolean*",
  "indicator": "*string*",
  "indicatorType": "*string*",
  "indicatorTypeId": "*number*",
  "insight": "*string*",
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "numReferenced": "*number*",
  "numReferences": "*number*",
  "rawId": "*string*",
  "referenced": [
    "*string*"
  ],
  "referencedIds": [
    "*number*"
  ],
  "references": [
    "*string*"
  ],
  "referencesIds": [
    "*number*"
  ],
  "releasabilityId": "*string*",
  "tags": [
    "*string*"
  ],
  "targetCountry": "*string*",
  "targetIndustry": "*string*",
  "tlp": "*string*",
  "uuid": "*string*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Moves specified events from one dataset to another dataset

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/move`



### Responses

#### 200 Returns the number of moved events 

> Data is at `body["result"]`

```json
"*number*"
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Removes a tag from an event

**DELETE** `/accounts/{account_id}/cloudforce-one/events/event_tag/{event_id}`



### Responses

#### 200 Returns success if operation succeeded.

> Data is at `body["result"]`

```json
{
  "success": "*boolean*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Adds a tag to an event

**POST** `/accounts/{account_id}/cloudforce-one/events/event_tag/{event_id}/create`



### Responses

#### 200 Returns success if operation succeeded.

> Data is at `body["result"]`

```json
{
  "success": "*boolean*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List all saved event queries

**GET** `/accounts/{account_id}/cloudforce-one/events/queries`

Retrieve all saved event queries for the account

### Responses

#### 200 Returns a list of event queries.

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*integer*",
    "alert_enabled": "*boolean*",
    "alert_rollup_enabled": "*boolean*",
    "created_at": "*string*",
    "id": "*integer*",
    "name": "*string*",
    "query_json": "*string*",
    "rule_enabled": "*boolean*",
    "rule_scope": "*string*",
    "updated_at": "*string*",
    "user_email": "*string*"
  }
]
```

#### 500 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List all event query alerts

**GET** `/accounts/{account_id}/cloudforce-one/events/queries/alerts`

Retrieve all event query alerts for the account

### Responses

#### 200 Returns a list of event query alerts.

> Data is at `body["result"]`

```json
[
  {
    "account_id": "*integer*",
    "created_at": "*string*",
    "enabled": "*boolean*",
    "frequency": "*string*",
    "id": "*integer*",
    "last_sent_at": "*string*",
    "notification_type": "*string*",
    "query_id": "*integer*",
    "updated_at": "*string*",
    "user_email": "*string*"
  }
]
```

#### 500 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Create an event query alert

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/create`

Create a new alert subscription for an event query

### Responses

#### 200 Returns the created event query alert.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "created_at": "*string*",
  "enabled": "*boolean*",
  "frequency": "*string*",
  "id": "*integer*",
  "last_sent_at": "*string*",
  "notification_type": "*string*",
  "query_id": "*integer*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update an event query alert

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Update an existing event query alert by its ID

### Responses

#### 200 Returns the updated event query alert.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "created_at": "*string*",
  "enabled": "*boolean*",
  "frequency": "*string*",
  "id": "*integer*",
  "last_sent_at": "*string*",
  "notification_type": "*string*",
  "query_id": "*integer*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update an event query alert

**PATCH** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Update an existing event query alert by its ID

### Responses

#### 200 Returns the updated event query alert.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "created_at": "*string*",
  "enabled": "*boolean*",
  "frequency": "*string*",
  "id": "*integer*",
  "last_sent_at": "*string*",
  "notification_type": "*string*",
  "query_id": "*integer*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Read an event query alert

**GET** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Retrieve an event query alert by its ID

### Responses

#### 200 Returns the event query alert.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "created_at": "*string*",
  "enabled": "*boolean*",
  "frequency": "*string*",
  "id": "*integer*",
  "last_sent_at": "*string*",
  "notification_type": "*string*",
  "query_id": "*integer*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete an event query alert

**DELETE** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Delete an event query alert subscription by its ID

### Responses

#### 200 Event query alert deleted successfully.

> Data is at `body["result"]`

```json

```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Create a saved event query

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/create`

Create a new saved event query for the account

### Responses

#### 200 Returns the created event query.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "alert_enabled": "*boolean*",
  "alert_rollup_enabled": "*boolean*",
  "created_at": "*string*",
  "id": "*integer*",
  "name": "*string*",
  "query_json": "*string*",
  "rule_enabled": "*boolean*",
  "rule_scope": "*string*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a saved event query

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Update an existing saved event query by its ID

### Responses

#### 200 Returns the updated event query.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "alert_enabled": "*boolean*",
  "alert_rollup_enabled": "*boolean*",
  "created_at": "*string*",
  "id": "*integer*",
  "name": "*string*",
  "query_json": "*string*",
  "rule_enabled": "*boolean*",
  "rule_scope": "*string*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Update a saved event query

**PATCH** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Update an existing saved event query by its ID

### Responses

#### 200 Returns the updated event query.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "alert_enabled": "*boolean*",
  "alert_rollup_enabled": "*boolean*",
  "created_at": "*string*",
  "id": "*integer*",
  "name": "*string*",
  "query_json": "*string*",
  "rule_enabled": "*boolean*",
  "rule_scope": "*string*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Read a saved event query

**GET** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Retrieve a saved event query by its ID

### Responses

#### 200 Returns the event query.

> Data is at `body["result"]`

```json
{
  "account_id": "*integer*",
  "alert_enabled": "*boolean*",
  "alert_rollup_enabled": "*boolean*",
  "created_at": "*string*",
  "id": "*integer*",
  "name": "*string*",
  "query_json": "*string*",
  "rule_enabled": "*boolean*",
  "rule_scope": "*string*",
  "updated_at": "*string*",
  "user_email": "*string*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Delete a saved event query

**DELETE** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Delete a saved event query by its ID

### Responses

#### 200 Event query deleted successfully.

> Data is at `body["result"]`

```json

```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Reads data for a raw event

**GET** `/accounts/{account_id}/cloudforce-one/events/raw/{dataset_id}/{event_id}`



### Responses

#### 200 Returns the raw event.

> Data is at `body["result"]`

```json
{
  "accountId": "*number*",
  "created": "*string*",
  "data": {},
  "id": "*string*",
  "source": "*string*",
  "tlp": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Removes an event reference

**DELETE** `/accounts/{account_id}/cloudforce-one/events/relate/{event_id}`



### Responses

#### 200 Returns success if operation succeeded.

> Data is at `body["result"]`

```json
{
  "success": "*boolean*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Creates event references for a event

**POST** `/accounts/{account_id}/cloudforce-one/events/relate/{event_id}/create`



### Responses

#### 200 Returns success if operation succeeded.

> Data is at `body["result"]`

```json
{
  "success": "*boolean*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Create a relationship between two events

**POST** `/accounts/{account_id}/cloudforce-one/events/relationships/create`

Creates a directed relationship between two events. The relationship is from parent to child with a specified type.

### Responses

#### 200 Relationship created successfully

> Data is at `body["result"]`

```json
{
  "childIds": [
    "*string*"
  ],
  "errors": [
    {
      "childId": "*string*",
      "error": "*string*",
      "errorType": "*string*"
    }
  ],
  "message": "*string*",
  "relationships": [
    {
      "childDatasetId": "*string*",
      "childId": "*string*",
      "parentDatasetId": "*string*",
      "parentId": "*string*",
      "relationshipType": "*string*"
    }
  ],
  "relationshipsCreated": "*number*",
  "success": "*boolean*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Deletes one or more events

**DELETE** `/accounts/{account_id}/cloudforce-one/events/{dataset_id}/delete`



### Responses

#### 200 Returns the number of deleted events.

> Data is at `body["result"]`

```json
"*number*"
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Revert an Events Durable Object to a point in time

**POST** `/accounts/{account_id}/cloudforce-one/events/{dataset_id}/revert-do`



### Responses

#### 200 Revert scheduled for the specified Durable Object.

> Data is at `body["result"]`

```json
{
  "properties": {
    "datasetId": {
      "type": "*string*"
    },
    "minutesAgo": {
      "type": "*string*"
    },
    "revertBookmark": {
      "type": "*string*"
    },
    "targetTimestamp": {
      "type": "*string*"
    },
    "undoBookmark": {
      "type": "*string*"
    }
  },
  "required": [
    "*string*"
  ],
  "type": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Updates an event

**POST** `/accounts/{account_id}/cloudforce-one/events/{event_id}`



### Responses

#### 200 Returns the updated event.

> Data is at `body["result"]`

```json
{
  "attacker": "*string*",
  "attackerCountry": "*string*",
  "category": "*string*",
  "datasetId": "*string*",
  "date": "*string*",
  "event": "*string*",
  "hasChildren": "*boolean*",
  "indicator": "*string*",
  "indicatorType": "*string*",
  "indicatorTypeId": "*number*",
  "insight": "*string*",
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "numReferenced": "*number*",
  "numReferences": "*number*",
  "rawId": "*string*",
  "referenced": [
    "*string*"
  ],
  "referencedIds": [
    "*number*"
  ],
  "references": [
    "*string*"
  ],
  "referencesIds": [
    "*number*"
  ],
  "releasabilityId": "*string*",
  "tags": [
    "*string*"
  ],
  "targetCountry": "*string*",
  "targetIndustry": "*string*",
  "tlp": "*string*",
  "uuid": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Updates an event

**PATCH** `/accounts/{account_id}/cloudforce-one/events/{event_id}`



### Responses

#### 200 Returns the updated event.

> Data is at `body["result"]`

```json
{
  "attacker": "*string*",
  "attackerCountry": "*string*",
  "category": "*string*",
  "datasetId": "*string*",
  "date": "*string*",
  "event": "*string*",
  "hasChildren": "*boolean*",
  "indicator": "*string*",
  "indicatorType": "*string*",
  "indicatorTypeId": "*number*",
  "insight": "*string*",
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "numReferenced": "*number*",
  "numReferences": "*number*",
  "rawId": "*string*",
  "referenced": [
    "*string*"
  ],
  "referencedIds": [
    "*number*"
  ],
  "references": [
    "*string*"
  ],
  "referencesIds": [
    "*number*"
  ],
  "releasabilityId": "*string*",
  "tags": [
    "*string*"
  ],
  "targetCountry": "*string*",
  "targetIndustry": "*string*",
  "tlp": "*string*",
  "uuid": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Reads an event

**GET** `/accounts/{account_id}/cloudforce-one/events/{event_id}`

This Method is deprecated. Please use /events/dataset/:dataset_id/events/:event_id instead.

### Responses

#### 200 Returns an event.

> Data is at `body["result"]`

```json
{
  "attacker": "*string*",
  "attackerCountry": "*string*",
  "category": "*string*",
  "datasetId": "*string*",
  "date": "*string*",
  "event": "*string*",
  "hasChildren": "*boolean*",
  "indicator": "*string*",
  "indicatorType": "*string*",
  "indicatorTypeId": "*number*",
  "insight": "*string*",
  "killChain": "*number*",
  "mitreAttack": [
    "*string*"
  ],
  "numReferenced": "*number*",
  "numReferences": "*number*",
  "rawId": "*string*",
  "referenced": [
    "*string*"
  ],
  "referencedIds": [
    "*number*"
  ],
  "references": [
    "*string*"
  ],
  "referencesIds": [
    "*number*"
  ],
  "releasabilityId": "*string*",
  "tags": [
    "*string*"
  ],
  "targetCountry": "*string*",
  "targetIndustry": "*string*",
  "tlp": "*string*",
  "uuid": "*string*"
}
```

#### 404 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Updates a raw event

**POST** `/accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`



### Responses

#### 200 Returns the uuid of the updated raw event and its data.

> Data is at `body["result"]`

```json
{
  "data": {},
  "id": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Updates a raw event

**PATCH** `/accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`



### Responses

#### 200 Returns the uuid of the updated raw event and its data.

> Data is at `body["result"]`

```json
{
  "data": {},
  "id": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Reads data for a raw event

**GET** `/accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`



### Responses

#### 200 Returns the raw event.

> Data is at `body["result"]`

```json
{
  "accountId": "*number*",
  "created": "*string*",
  "data": {},
  "id": "*string*",
  "source": "*string*",
  "tlp": "*string*"
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Filter and list events related to specific event

**GET** `/accounts/{account_id}/cloudforce-one/events/{event_id}/relationships`

The `event_id` must be defined (to list existing events (and their IDs), use the [`Filter and List Events`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/methods/list/) endpoint). Also, must provide query parameters.

### Responses

#### 200 Returns a list of events related to the specified starting event.

> Data is at `body["result"]`

```json
[
  {
    "attacker": "*string*",
    "attackerCountry": "*string*",
    "category": "*string*",
    "datasetId": "*string*",
    "date": "*string*",
    "event": "*string*",
    "hasChildren": "*boolean*",
    "indicator": "*string*",
    "indicatorType": "*string*",
    "indicatorTypeId": "*number*",
    "insight": "*string*",
    "killChain": "*number*",
    "mitreAttack": [
      "*string*"
    ],
    "numReferenced": "*number*",
    "numReferences": "*number*",
    "rawId": "*string*",
    "referenced": [
      "*string*"
    ],
    "referencedIds": [
      "*number*"
    ],
    "references": [
      "*string*"
    ],
    "referencesIds": [
      "*number*"
    ],
    "releasabilityId": "*string*",
    "tags": [
      "*string*"
    ],
    "targetCountry": "*string*",
    "targetIndustry": "*string*",
    "tlp": "*string*",
    "uuid": "*string*"
  }
]
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## GraphQL endpoint for event aggregation

**POST** `/accounts/{account_id}/cloudforce-one/v2/events/graphql`

Execute GraphQL aggregations over threat events. Supports multi-dimensional group-bys, optional date range filtering, and multi-dataset aggregation.

### Responses

#### 200 GraphQL response payload (data and errors).

> Data is at `body["result"]`

```json
{
  "data": {},
  "errors": [
    {}
  ]
}
```

#### 400 Bad Request.

```json
{
  "errors": [
    {
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


