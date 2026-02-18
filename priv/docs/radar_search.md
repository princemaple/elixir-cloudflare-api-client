# Radar Search

## Search for locations, ASes, reports, and more

**GET** `/radar/search/global`

Searches for locations, autonomous systems, reports, bots, certificate logs, certificate authorities, industries and verticals

### Responses

#### 200 Successful response.

> Data is at `body["result"]`

```json
{
  "search": [
    {
      "code": "*string*",
      "name": "*string*",
      "type": "*string*"
    }
  ]
}
```

#### 400 Bad request.

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


