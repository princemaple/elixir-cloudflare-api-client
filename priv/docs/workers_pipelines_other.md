# workers_pipelines_other

## [DEPRECATED] Create Pipeline

**POST** `/accounts/{account_id}/pipelines`

[DEPRECATED] Create a new pipeline. Use the new /pipelines/v1/pipelines endpoint instead.


## [DEPRECATED] List Pipelines

**GET** `/accounts/{account_id}/pipelines`

[DEPRECATED] List, filter, and paginate pipelines in an account. Use the new /pipelines/v1/pipelines endpoint instead.


## Create Pipeline

**POST** `/accounts/{account_id}/pipelines/v1/pipelines`

Create a new Pipeline.


## List Pipelines

**GET** `/accounts/{account_id}/pipelines/v1/pipelines`

List/Filter Pipelines in Account.


## Get Pipeline Details

**GET** `/accounts/{account_id}/pipelines/v1/pipelines/{pipeline_id}`

Get Pipelines Details.


## Delete Pipelines

**DELETE** `/accounts/{account_id}/pipelines/v1/pipelines/{pipeline_id}`

Delete Pipeline in Account.


## Create Sink

**POST** `/accounts/{account_id}/pipelines/v1/sinks`

Create a new Sink.


## List Sinks

**GET** `/accounts/{account_id}/pipelines/v1/sinks`

List/Filter Sinks in Account.


## Get Sink Details

**GET** `/accounts/{account_id}/pipelines/v1/sinks/{sink_id}`

Get Sink Details.


## Delete Sink

**DELETE** `/accounts/{account_id}/pipelines/v1/sinks/{sink_id}`

Delete Pipeline in Account.


## Create Stream

**POST** `/accounts/{account_id}/pipelines/v1/streams`

Create a new Stream.


## List Streams

**GET** `/accounts/{account_id}/pipelines/v1/streams`

List/Filter Streams in Account.


## Update Stream

**PATCH** `/accounts/{account_id}/pipelines/v1/streams/{stream_id}`

Update a Stream.


## Get Stream Details

**GET** `/accounts/{account_id}/pipelines/v1/streams/{stream_id}`

Get Stream Details.


## Delete Stream

**DELETE** `/accounts/{account_id}/pipelines/v1/streams/{stream_id}`

Delete Stream in Account.


## Validate SQL

**POST** `/accounts/{account_id}/pipelines/v1/validate_sql`

Validate Arroyo SQL.


## [DEPRECATED] Update Pipeline

**PUT** `/accounts/{account_id}/pipelines/{pipeline_name}`

[DEPRECATED] Update an existing pipeline. Use the new /pipelines/v1/pipelines endpoint instead.


## [DEPRECATED] Get Pipeline

**GET** `/accounts/{account_id}/pipelines/{pipeline_name}`

[DEPRECATED] Get configuration of a pipeline. Use the new /pipelines/v1/pipelines endpoint instead.


## [DEPRECATED] Delete Pipeline

**DELETE** `/accounts/{account_id}/pipelines/{pipeline_name}`

[DEPRECATED] Delete a pipeline. Use the new /pipelines/v1/pipelines endpoint instead.

