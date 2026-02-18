# Feedback

## Submit a feedback report

**POST** `/zones/{zone_id}/bot_management/feedback`

Submit a feedback report for the specified zone. Use `type` to indicate whether the report is a false positive (good traffic flagged as bot) or a false negative (bot traffic missed). Furthermore, you can also use `expression` as a wirefilter to identify the affected traffic sample.

See more accepted API fields and expression types at https://developers.cloudflare.com/bots/concepts/feedback-loop/#api-fields and https://developers.cloudflare.com/bots/concepts/feedback-loop/#expression-fields, respectively.


### Responses

#### 201 Feedback report created

> Data is at `body["result"]`

```json

```

#### 4XX Feedback creation failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List zone feedback reports

**GET** `/zones/{zone_id}/bot_management/feedback`

Returns all feedback reports previously submitted for the specified zone. Feedback reports help improve detection by sharing samples of traffic that were misclassified as bots or humans.


### Responses

#### 200 List of feedback reports

> Data is at `body["result"]`

```json
[
  {
    "created_at": "*string*",
    "description": "*string*",
    "expression": "*string*",
    "first_request_seen_at": "*string*",
    "last_request_seen_at": "*string*",
    "requests": "*integer*",
    "requests_by_attribute": {},
    "requests_by_score": {},
    "requests_by_score_src": {},
    "subtype": "*string*",
    "type": "*string*"
  }
]
```

#### 4XX Feedback list failure

```json
{
  "errors": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "messages": [
    {
      "code": "*integer*",
      "documentation_url": "*string*",
      "message": "*string*",
      "source": {
        "pointer": "*string*"
      }
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```


