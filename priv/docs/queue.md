# Queue

## Create Event Subscription

**POST** `/accounts/{account_id}/event_subscriptions/subscriptions`

Create a new event subscription for a queue

### Responses

#### 200 Successfully created event subscription

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "destination": {},
  "enabled": "*boolean*",
  "events": [
    "*string*"
  ],
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "source": {}
}
```

#### 400 Invalid request body or validation errors

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 404 Queue does not exist or resource not found on source

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 405 Multiple subscriptions on same resource not supported

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## List Event Subscriptions

**GET** `/accounts/{account_id}/event_subscriptions/subscriptions`

Get a paginated list of event subscriptions with optional sorting and filtering

### Responses

#### 200 List of event subscriptions

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "destination": {},
    "enabled": "*boolean*",
    "events": [
      "*string*"
    ],
    "id": "*string*",
    "modified_at": "*string*",
    "name": "*string*",
    "source": {}
  }
]
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Update Event Subscription

**PATCH** `/accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`

Update an existing event subscription

### Responses

#### 200 Successfully created event subscription

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "destination": {},
  "enabled": "*boolean*",
  "events": [
    "*string*"
  ],
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "source": {}
}
```

#### 400 Invalid request body or validation errors

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 404 Queue does not exist or resource not found on source

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Get Event Subscription

**GET** `/accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`

Get details about an existing event subscription

### Responses

#### 200 Details about an event subscription

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "destination": {},
  "enabled": "*boolean*",
  "events": [
    "*string*"
  ],
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "source": {}
}
```

#### 404 Event subscription does not exist

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Delete Event Subscription

**DELETE** `/accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`

Delete an existing event subscription

### Responses

#### 200 Successfully created event subscription

> Data is at `body["result"]`

```json
{
  "created_at": "*string*",
  "destination": {},
  "enabled": "*boolean*",
  "events": [
    "*string*"
  ],
  "id": "*string*",
  "modified_at": "*string*",
  "name": "*string*",
  "source": {}
}
```



## Create Queue

**POST** `/accounts/{account_id}/queues`

Create a new queue

### Responses

#### 200 Created Queue

> Data is at `body["result"]`

```json
{
  "consumers": [
    {}
  ],
  "consumers_total_count": "*number*",
  "created_on": "*string*",
  "modified_on": "*string*",
  "producers": [
    {}
  ],
  "producers_total_count": "*number*",
  "queue_id": "*string*",
  "queue_name": "*string*",
  "settings": {
    "delivery_delay": "*number*",
    "delivery_paused": "*boolean*",
    "message_retention_period": "*number*"
  }
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## List Queues

**GET** `/accounts/{account_id}/queues`

Returns the queues owned by an account.

### Responses

#### 200 List of all Queues that belong to this account

> Data is at `body["result"]`

```json
[
  {
    "consumers": [
      {}
    ],
    "consumers_total_count": "*number*",
    "created_on": "*string*",
    "modified_on": "*string*",
    "producers": [
      {}
    ],
    "producers_total_count": "*number*",
    "queue_id": "*string*",
    "queue_name": "*string*",
    "settings": {
      "delivery_delay": "*number*",
      "delivery_paused": "*boolean*",
      "message_retention_period": "*number*"
    }
  }
]
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Update Queue

**PUT** `/accounts/{account_id}/queues/{queue_id}`

Updates a Queue. Note that this endpoint does not support partial updates. If successful, the Queue's configuration is overwritten with the supplied configuration.

### Responses

#### 200 Updated Queue

> Data is at `body["result"]`

```json
{
  "consumers": [
    {}
  ],
  "consumers_total_count": "*number*",
  "created_on": "*string*",
  "modified_on": "*string*",
  "producers": [
    {}
  ],
  "producers_total_count": "*number*",
  "queue_id": "*string*",
  "queue_name": "*string*",
  "settings": {
    "delivery_delay": "*number*",
    "delivery_paused": "*boolean*",
    "message_retention_period": "*number*"
  }
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Update Queue

**PATCH** `/accounts/{account_id}/queues/{queue_id}`

Updates a Queue.

### Responses

#### 200 Updated Queue

> Data is at `body["result"]`

```json
{
  "consumers": [
    {}
  ],
  "consumers_total_count": "*number*",
  "created_on": "*string*",
  "modified_on": "*string*",
  "producers": [
    {}
  ],
  "producers_total_count": "*number*",
  "queue_id": "*string*",
  "queue_name": "*string*",
  "settings": {
    "delivery_delay": "*number*",
    "delivery_paused": "*boolean*",
    "message_retention_period": "*number*"
  }
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Get Queue

**GET** `/accounts/{account_id}/queues/{queue_id}`

Get details about a specific queue.

### Responses

#### 200 Details of the requested Queue

> Data is at `body["result"]`

```json
{
  "consumers": [
    {}
  ],
  "consumers_total_count": "*number*",
  "created_on": "*string*",
  "modified_on": "*string*",
  "producers": [
    {}
  ],
  "producers_total_count": "*number*",
  "queue_id": "*string*",
  "queue_name": "*string*",
  "settings": {
    "delivery_delay": "*number*",
    "delivery_paused": "*boolean*",
    "message_retention_period": "*number*"
  }
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Delete Queue

**DELETE** `/accounts/{account_id}/queues/{queue_id}`

Deletes a queue

### Responses

#### 200 Successful delete

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Create a Queue Consumer

**POST** `/accounts/{account_id}/queues/{queue_id}/consumers`

Creates a new consumer for a Queue

### Responses

#### 200 Create Queue Consumer response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## List Queue Consumers

**GET** `/accounts/{account_id}/queues/{queue_id}/consumers`

Returns the consumers for a Queue

### Responses

#### 200 All consumers attached to this Queue

> Data is at `body["result"]`

```json
[
  {}
]
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Update Queue Consumer

**PUT** `/accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`

Updates the consumer for a queue, or creates one if it does not exist.

### Responses

#### 200 Update Queue Consumer response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Update Queue Consumer response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Get Queue Consumer

**GET** `/accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`

Fetches the consumer for a queue by consumer id

### Responses

#### 200 Get Queue Consumer response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Get Queue Consumer response failure.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Delete Queue Consumer

**DELETE** `/accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`

Deletes the consumer for a queue.

### Responses

#### 200 Successful consumer delete

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Push Message

**POST** `/accounts/{account_id}/queues/{queue_id}/messages`

Push a message to a Queue

### Responses

#### 200 Successful message ingestion

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Acknowledge + Retry Queue Messages

**POST** `/accounts/{account_id}/queues/{queue_id}/messages/ack`

Acknowledge + Retry messages from a Queue

### Responses

#### 200 Details of ACKs and retries

> Data is at `body["result"]`

```json
{
  "ackCount": "*number*",
  "retryCount": "*number*",
  "warnings": [
    "*string*"
  ]
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Push Message Batch

**POST** `/accounts/{account_id}/queues/{queue_id}/messages/batch`

Push a batch of message to a Queue

### Responses

#### 200 Successful batch ingestion

> Data is at `body["result"]`

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Pull Queue Messages

**POST** `/accounts/{account_id}/queues/{queue_id}/messages/pull`

Pull a batch of messages from a Queue

### Responses

#### 200 A batch of messages in the Queue

> Data is at `body["result"]`

```json
{
  "message_backlog_count": "*number*",
  "messages": [
    {
      "attempts": "*number*",
      "body": "*string*",
      "id": "*string*",
      "lease_id": "*string*",
      "metadata": {},
      "timestamp_ms": "*number*"
    }
  ]
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Purge Queue

**POST** `/accounts/{account_id}/queues/{queue_id}/purge`

Deletes all messages from the Queue.

### Responses

#### 200 Updated Queue

> Data is at `body["result"]`

```json
{
  "consumers": [
    {}
  ],
  "consumers_total_count": "*number*",
  "created_on": "*string*",
  "modified_on": "*string*",
  "producers": [
    {}
  ],
  "producers_total_count": "*number*",
  "queue_id": "*string*",
  "queue_name": "*string*",
  "settings": {
    "delivery_delay": "*number*",
    "delivery_paused": "*boolean*",
    "message_retention_period": "*number*"
  }
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```



## Get Queue Purge Status

**GET** `/accounts/{account_id}/queues/{queue_id}/purge`

Get details about a Queue's purge status.

### Responses

#### 200 Details of the requested Queue

> Data is at `body["result"]`

```json
{
  "completed": "*string*",
  "started_at": "*string*"
}
```

#### 4XX Failure response

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    "*string*"
  ],
  "success": "*boolean*"
}
```


