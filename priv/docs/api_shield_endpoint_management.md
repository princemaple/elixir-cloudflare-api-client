# API Shield Endpoint Management

## Add operations to a zone

**POST** `/zones/{zone_id}/api_gateway/operations`

Add one or more operations to a zone. Endpoints can contain path variables. Host, method, endpoint will be normalized to a canoncial form when creating an operation and must be unique on the zone. Inserting an operation that matches an existing one will return the record of the already existing operation and update its last_updated date.


## Retrieve information about all operations on a zone

**GET** `/zones/{zone_id}/api_gateway/operations`




## Delete multiple operations

**DELETE** `/zones/{zone_id}/api_gateway/operations`




## Add one operation to a zone

**POST** `/zones/{zone_id}/api_gateway/operations/item`

Add one operation to a zone. Endpoints can contain path variables. Host, method, endpoint will be normalized to a canoncial form when creating an operation and must be unique on the zone. Inserting an operation that matches an existing one will return the record of the already existing operation and update its last_updated date.


## Retrieve information about an operation

**GET** `/zones/{zone_id}/api_gateway/operations/{operation_id}`




## Delete an operation

**DELETE** `/zones/{zone_id}/api_gateway/operations/{operation_id}`




## Retrieve operations and features as OpenAPI schemas

**GET** `/zones/{zone_id}/api_gateway/schemas`



