# Event

## Filter and list events

**GET** `/accounts/{account_id}/cloudforce-one/events`

When `datasetId` is unspecified, events will be listed from the `Cloudforce One Threat Events` dataset. To list existing datasets (and their IDs), use the [`List Datasets`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/list/) endpoint). Also, must provide query parameters.


## Aggregate events by single or multiple columns with optional date filtering

**GET** `/accounts/{account_id}/cloudforce-one/events/aggregate`

Aggregate threat events by one or more columns (e.g., attacker, targetIndustry) with optional date filtering and daily grouping. Supports multi-dimensional aggregation for cross-analysis.


## Creates a new event

**POST** `/accounts/{account_id}/cloudforce-one/events/create`

To create a dataset, see the [`Create Dataset`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/create/) endpoint. When `datasetId` parameter is unspecified, it will be created in a default dataset named `Cloudforce One Threat Events`.


## Creates bulk events

**POST** `/accounts/{account_id}/cloudforce-one/events/create/bulk`

The `datasetId` parameter must be defined. To list existing datasets (and their IDs) in your account, use the [`List Datasets`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/subresources/datasets/methods/list/) endpoint.


## Creates bulk DOS event with relationships and indicators

**POST** `/accounts/{account_id}/cloudforce-one/events/create/bulk/relationships`

This method is deprecated. Please use `event_create_bulk` instead


## Reads an event

**GET** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/events/{event_id}`

Retrieves a specific event by its UUID.


## Moves specified events from one dataset to another dataset

**POST** `/accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/move`




## Removes a tag from an event

**DELETE** `/accounts/{account_id}/cloudforce-one/events/event_tag/{event_id}`




## Adds a tag to an event

**POST** `/accounts/{account_id}/cloudforce-one/events/event_tag/{event_id}/create`




## List all saved event queries

**GET** `/accounts/{account_id}/cloudforce-one/events/queries`

Retrieve all saved event queries for the account


## List all event query alerts

**GET** `/accounts/{account_id}/cloudforce-one/events/queries/alerts`

Retrieve all event query alerts for the account


## Create an event query alert

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/create`

Create a new alert subscription for an event query


## Update an event query alert

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Update an existing event query alert by its ID


## Update an event query alert

**PATCH** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Update an existing event query alert by its ID


## Read an event query alert

**GET** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Retrieve an event query alert by its ID


## Delete an event query alert

**DELETE** `/accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`

Delete an event query alert subscription by its ID


## Create a saved event query

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/create`

Create a new saved event query for the account


## Update a saved event query

**POST** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Update an existing saved event query by its ID


## Update a saved event query

**PATCH** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Update an existing saved event query by its ID


## Read a saved event query

**GET** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Retrieve a saved event query by its ID


## Delete a saved event query

**DELETE** `/accounts/{account_id}/cloudforce-one/events/queries/{query_id}`

Delete a saved event query by its ID


## Reads data for a raw event

**GET** `/accounts/{account_id}/cloudforce-one/events/raw/{dataset_id}/{event_id}`




## Removes an event reference

**DELETE** `/accounts/{account_id}/cloudforce-one/events/relate/{event_id}`




## Creates event references for a event

**POST** `/accounts/{account_id}/cloudforce-one/events/relate/{event_id}/create`




## Create a relationship between two events

**POST** `/accounts/{account_id}/cloudforce-one/events/relationships/create`

Creates a directed relationship between two events. The relationship is from parent to child with a specified type.


## Deletes one or more events

**DELETE** `/accounts/{account_id}/cloudforce-one/events/{dataset_id}/delete`




## Revert an Events Durable Object to a point in time

**POST** `/accounts/{account_id}/cloudforce-one/events/{dataset_id}/revert-do`




## Updates an event

**POST** `/accounts/{account_id}/cloudforce-one/events/{event_id}`




## Updates an event

**PATCH** `/accounts/{account_id}/cloudforce-one/events/{event_id}`




## Reads an event

**GET** `/accounts/{account_id}/cloudforce-one/events/{event_id}`

This Method is deprecated. Please use /events/dataset/:dataset_id/events/:event_id instead.


## Updates a raw event

**POST** `/accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`




## Updates a raw event

**PATCH** `/accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`




## Reads data for a raw event

**GET** `/accounts/{account_id}/cloudforce-one/events/{event_id}/raw/{raw_id}`




## Filter and list events related to specific event

**GET** `/accounts/{account_id}/cloudforce-one/events/{event_id}/relationships`

The `event_id` must be defined (to list existing events (and their IDs), use the [`Filter and List Events`](https://developers.cloudflare.com/api/resources/cloudforce_one/subresources/threat_events/methods/list/) endpoint). Also, must provide query parameters.


## GraphQL endpoint for event aggregation

**POST** `/accounts/{account_id}/cloudforce-one/v2/events/graphql`

Execute GraphQL aggregations over threat events. Supports multi-dimensional group-bys, optional date range filtering, and multi-dataset aggregation.

