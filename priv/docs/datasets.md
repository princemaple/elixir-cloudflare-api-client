# Datasets

## Populate dataset-specific lookup tables from existing Events data with batch processing

**POST** `/accounts/{account_id}/cloudforce-one/events/datasets/populate`



### Responses

#### 200 Returns population results with counts and any errors

> Data is at `body["result"]`

```json
{
  "properties": {
    "accountId": {
      "type": "*string*"
    },
    "datasets": {
      "items": {
        "properties": {
          "attackers": {
            "properties": null,
            "type": null
          },
          "categories": {
            "properties": null,
            "type": null
          },
          "datasetId": {
            "type": null
          },
          "indicatorTypes": {
            "properties": null,
            "type": null
          },
          "processingTimeMs": {
            "type": null
          },
          "targetIndustries": {
            "properties": null,
            "type": null
          },
          "totalProcessed": {
            "type": null
          }
        },
        "type": "*string*"
      },
      "type": "*string*"
    },
    "errors": {
      "items": {
        "type": "*string*"
      },
      "type": "*string*"
    },
    "summary": {
      "properties": {
        "failedDatasets": {
          "type": "*string*"
        },
        "successfulDatasets": {
          "type": "*string*"
        },
        "totalDatasets": {
          "type": "*string*"
        },
        "totalIndicatorTypes": {
          "type": "*string*"
        },
        "totalProcessingTimeMs": {
          "type": "*string*"
        }
      },
      "type": "*string*"
    }
  },
  "type": "*string*"
}
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


