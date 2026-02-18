# Queue

## Create Event Subscription

**POST** `/accounts/{account_id}/event_subscriptions/subscriptions`

Create a new event subscription for a queue


## List Event Subscriptions

**GET** `/accounts/{account_id}/event_subscriptions/subscriptions`

Get a paginated list of event subscriptions with optional sorting and filtering


## Update Event Subscription

**PATCH** `/accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`

Update an existing event subscription


## Get Event Subscription

**GET** `/accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`

Get details about an existing event subscription


## Delete Event Subscription

**DELETE** `/accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`

Delete an existing event subscription


## Create Queue

**POST** `/accounts/{account_id}/queues`

Create a new queue


## List Queues

**GET** `/accounts/{account_id}/queues`

Returns the queues owned by an account.


## Update Queue

**PUT** `/accounts/{account_id}/queues/{queue_id}`

Updates a Queue. Note that this endpoint does not support partial updates. If successful, the Queue's configuration is overwritten with the supplied configuration.


## Update Queue

**PATCH** `/accounts/{account_id}/queues/{queue_id}`

Updates a Queue.


## Get Queue

**GET** `/accounts/{account_id}/queues/{queue_id}`

Get details about a specific queue.


## Delete Queue

**DELETE** `/accounts/{account_id}/queues/{queue_id}`

Deletes a queue


## Create a Queue Consumer

**POST** `/accounts/{account_id}/queues/{queue_id}/consumers`

Creates a new consumer for a Queue


## List Queue Consumers

**GET** `/accounts/{account_id}/queues/{queue_id}/consumers`

Returns the consumers for a Queue


## Update Queue Consumer

**PUT** `/accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`

Updates the consumer for a queue, or creates one if it does not exist.


## Get Queue Consumer

**GET** `/accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`

Fetches the consumer for a queue by consumer id


## Delete Queue Consumer

**DELETE** `/accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`

Deletes the consumer for a queue.


## Push Message

**POST** `/accounts/{account_id}/queues/{queue_id}/messages`

Push a message to a Queue


## Acknowledge + Retry Queue Messages

**POST** `/accounts/{account_id}/queues/{queue_id}/messages/ack`

Acknowledge + Retry messages from a Queue


## Push Message Batch

**POST** `/accounts/{account_id}/queues/{queue_id}/messages/batch`

Push a batch of message to a Queue


## Pull Queue Messages

**POST** `/accounts/{account_id}/queues/{queue_id}/messages/pull`

Pull a batch of messages from a Queue


## Purge Queue

**POST** `/accounts/{account_id}/queues/{queue_id}/purge`

Deletes all messages from the Queue.


## Get Queue Purge Status

**GET** `/accounts/{account_id}/queues/{queue_id}/purge`

Get details about a Queue's purge status.

