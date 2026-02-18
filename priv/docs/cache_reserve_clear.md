# Cache Reserve Clear

## Start Cache Reserve Clear

**POST** `/zones/{zone_id}/smart_shield/cache_reserve_clear`

You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.

### Responses

#### 200 Start Cache Reserve Clear response.

> Data is at `body["result"]`

```json
{
  "end_ts": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "start_ts": "*string*",
  "state": "*string*"
}
```

#### 4XX Start Cache Reserve Clear failure response.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Get Cache Reserve Clear

**GET** `/zones/{zone_id}/smart_shield/cache_reserve_clear`

You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.

### Responses

#### 200 Get Cache Reserve Clear response.

> Data is at `body["result"]`

```json
{
  "end_ts": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "start_ts": "*string*",
  "state": "*string*"
}
```

#### 4XX Get Cache Reserve Clear failure response.

```json
{
  "errors": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


