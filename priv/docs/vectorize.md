# Vectorize

## Create Vectorize Index

**POST** `/accounts/{account_id}/vectorize/v2/indexes`

Creates and returns a new Vectorize Index.


## List Vectorize Indexes

**GET** `/accounts/{account_id}/vectorize/v2/indexes`

Returns a list of Vectorize Indexes


## Get Vectorize Index

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}`

Returns the specified Vectorize Index.


## Delete Vectorize Index

**DELETE** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}`

Deletes the specified Vectorize Index.


## Delete Vectors By Identifier

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/delete_by_ids`

Delete a set of vectors from an index by their vector identifiers.


## Get Vectors By Identifier

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/get_by_ids`

Get a set of vectors from an index by their vector identifiers.


## Get Vectorize Index Info

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/info`

Get information about a vectorize index.


## Insert Vectors

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/insert`

Inserts vectors into the specified index and returns a mutation id corresponding to the vectors enqueued for insertion.


## List Vectors

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/list`

Returns a paginated list of vector identifiers from the specified index.


## Create Metadata Index

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/create`

Enable metadata filtering based on metadata property. Limited to 10 properties.


## Delete Metadata Index

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/delete`

Allow Vectorize to delete the specified metadata index.


## List Metadata Indexes

**GET** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/list`

List Metadata Indexes for the specified Vectorize Index.


## Query Vectors

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/query`

Finds vectors closest to a given vector in an index.


## Upsert Vectors

**POST** `/accounts/{account_id}/vectorize/v2/indexes/{index_name}/upsert`

Upserts vectors into the specified index, creating them if they do not exist and returns a mutation id corresponding to the vectors enqueued for upsertion.

