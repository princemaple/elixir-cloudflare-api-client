# Vectorize Beta (Deprecated)

## Create Vectorize Index (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes`

Creates and returns a new Vectorize Index.


## List Vectorize Indexes (Deprecated)

**GET** `/accounts/{account_id}/vectorize/indexes`

Returns a list of Vectorize Indexes


## Update Vectorize Index (Deprecated)

**PUT** `/accounts/{account_id}/vectorize/indexes/{index_name}`

Updates and returns the specified Vectorize Index.


## Get Vectorize Index (Deprecated)

**GET** `/accounts/{account_id}/vectorize/indexes/{index_name}`

Returns the specified Vectorize Index.


## Delete Vectorize Index (Deprecated)

**DELETE** `/accounts/{account_id}/vectorize/indexes/{index_name}`

Deletes the specified Vectorize Index.


## Delete Vectors By Identifier (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/delete-by-ids`

Delete a set of vectors from an index by their vector identifiers.


## Get Vectors By Identifier (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/get-by-ids`

Get a set of vectors from an index by their vector identifiers.


## Insert Vectors (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/insert`

Inserts vectors into the specified index and returns the count of the vectors successfully inserted.


## Query Vectors (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/query`

Finds vectors closest to a given vector in an index.


## Upsert Vectors (Deprecated)

**POST** `/accounts/{account_id}/vectorize/indexes/{index_name}/upsert`

Upserts vectors into the specified index, creating them if they do not exist and returns the count of values and ids successfully inserted.

