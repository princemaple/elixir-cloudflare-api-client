# Analytics

## Fetch day-wise session and recording analytics data for an App

**GET** `/accounts/{account_id}/realtime/kit/{app_id}/analytics/daywise`

Returns day-wise session and recording analytics data of an App for the specified time range start_date to end_date. If start_date and end_date are not provided, the default time range is set from 30 days ago to the current date.

### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "data": {
    "recording_stats": {
      "day_stats": [
        {
          "day": "*string*",
          "total_recording_minutes": "*integer*",
          "total_recordings": "*integer*"
        }
      ],
      "recording_count": "*integer*",
      "recording_minutes_consumed": "*number*"
    },
    "session_stats": {
      "day_stats": [
        {
          "day": "*string*",
          "total_session_minutes": "*number*",
          "total_sessions": "*integer*"
        }
      ],
      "sessions_count": "*integer*",
      "sessions_minutes_consumed": "*number*"
    }
  },
  "success": "*boolean*"
}
```


