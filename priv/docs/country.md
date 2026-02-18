# Country

## Retrieves countries information for all countries

**GET** `/accounts/{account_id}/cloudforce-one/events/countries`



### Responses

#### 200 Returns the long and short country code for every country.

> Data is at `body["result"]`

```json
[
  {
    "result": [
      {
        "alpha3": "*string*",
        "name": "*string*"
      }
    ],
    "success": "*string*"
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


