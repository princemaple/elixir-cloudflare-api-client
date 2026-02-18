# Magic Network Monitoring VPC Flow logs

## Generate authentication token for VPC flow logs export.

**POST** `/accounts/{account_id}/mnm/vpc-flows/token`

Generate authentication token for VPC flow logs export.

### Responses

#### 200 Generate authentication token for VPC flow logs export response.

> Data is at `body["result"]`

```json
"*string*"
```

#### 4XX Generate authentication token for VPC flow logs export failure.

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


