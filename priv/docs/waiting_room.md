# Waiting Room

## List waiting rooms for account

**GET** `/accounts/{account_id}/waiting_rooms`

Lists waiting rooms for account.

### Responses

#### 200 List waiting rooms for account response

> Data is at `body["result"]`

```json
[
  {
    "additional_routes": [
      {
        "host": null,
        "path": null
      }
    ],
    "cookie_attributes": {
      "samesite": "*string*",
      "secure": "*string*"
    },
    "cookie_suffix": "*string*",
    "created_on": "*string*",
    "custom_page_html": "*string*",
    "default_template_language": "*string*",
    "description": "*string*",
    "disable_session_renewal": "*boolean*",
    "enabled_origin_commands": [
      "*string*"
    ],
    "host": "*string*",
    "id": "*string*",
    "json_response_enabled": "*boolean*",
    "modified_on": "*string*",
    "name": "*string*",
    "new_users_per_minute": "*integer*",
    "next_event_prequeue_start_time": "*string*",
    "next_event_start_time": "*string*",
    "path": "*string*",
    "queue_all": "*boolean*",
    "queueing_method": "*string*",
    "queueing_status_code": "*integer*",
    "session_duration": "*integer*",
    "suspended": "*boolean*",
    "total_active_users": "*integer*",
    "turnstile_action": "*string*",
    "turnstile_mode": "*string*"
  }
]
```

#### 4XX List waiting rooms for account response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Create waiting room

**POST** `/zones/{zone_id}/waiting_rooms`

Creates a new waiting room.

### Responses

#### 200 Create waiting room response

> Data is at `body["result"]`

```json
{
  "additional_routes": [
    {
      "host": "*string*",
      "path": "*string*"
    }
  ],
  "cookie_attributes": {
    "samesite": "*string*",
    "secure": "*string*"
  },
  "cookie_suffix": "*string*",
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "default_template_language": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "enabled_origin_commands": [
    "*string*"
  ],
  "host": "*string*",
  "id": "*string*",
  "json_response_enabled": "*boolean*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "next_event_prequeue_start_time": "*string*",
  "next_event_start_time": "*string*",
  "path": "*string*",
  "queue_all": "*boolean*",
  "queueing_method": "*string*",
  "queueing_status_code": "*integer*",
  "session_duration": "*integer*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Create waiting room response failure

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



## List waiting rooms for zone

**GET** `/zones/{zone_id}/waiting_rooms`

Lists waiting rooms for zone.

### Responses

#### 200 List waiting rooms for zone response

> Data is at `body["result"]`

```json
[
  {
    "additional_routes": [
      {
        "host": null,
        "path": null
      }
    ],
    "cookie_attributes": {
      "samesite": "*string*",
      "secure": "*string*"
    },
    "cookie_suffix": "*string*",
    "created_on": "*string*",
    "custom_page_html": "*string*",
    "default_template_language": "*string*",
    "description": "*string*",
    "disable_session_renewal": "*boolean*",
    "enabled_origin_commands": [
      "*string*"
    ],
    "host": "*string*",
    "id": "*string*",
    "json_response_enabled": "*boolean*",
    "modified_on": "*string*",
    "name": "*string*",
    "new_users_per_minute": "*integer*",
    "next_event_prequeue_start_time": "*string*",
    "next_event_start_time": "*string*",
    "path": "*string*",
    "queue_all": "*boolean*",
    "queueing_method": "*string*",
    "queueing_status_code": "*integer*",
    "session_duration": "*integer*",
    "suspended": "*boolean*",
    "total_active_users": "*integer*",
    "turnstile_action": "*string*",
    "turnstile_mode": "*string*"
  }
]
```

#### 4XX List waiting rooms for zone response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Create a custom waiting room page preview

**POST** `/zones/{zone_id}/waiting_rooms/preview`

Creates a waiting room page preview. Upload a custom waiting room page for preview. You will receive a preview URL in the form `http://waitingrooms.dev/preview/<uuid>`. You can use the following query parameters to change the state of the preview:
1. `force_queue`: Boolean indicating if all users will be queued in the waiting room and no one will be let into the origin website (also known as queueAll).
2. `queue_is_full`: Boolean indicating if the waiting room's queue is currently full and not accepting new users at the moment.
3. `queueing_method`: The queueing method currently used by the waiting room.
	- **fifo** indicates a FIFO queue.
	- **random** indicates a Random queue.
	- **passthrough** indicates a Passthrough queue. Keep in mind that the waiting room page will only be displayed if `force_queue=true` or `event=prequeueing` — for other cases the request will pass through to the origin. For our preview, this will be a fake origin website returning \"Welcome\". 
	- **reject** indicates a Reject queue.
4. `event`: Used to preview a waiting room event.
	- **none** indicates no event is occurring.
	- **prequeueing** indicates that an event is prequeueing (between `prequeue_start_time` and `event_start_time`).
	- **started** indicates that an event has started (between `event_start_time` and `event_end_time`).
5. `shuffle_at_event_start`: Boolean indicating if the event will shuffle users in the prequeue when it starts. This can only be set to **true** if an event is active (`event` is not **none**).

For example, you can make a request to `http://waitingrooms.dev/preview/<uuid>?force_queue=false&queue_is_full=false&queueing_method=random&event=started&shuffle_at_event_start=true`
6. `waitTime`: Non-zero, positive integer indicating the estimated wait time in minutes. The default value is 10 minutes.

For example, you can make a request to `http://waitingrooms.dev/preview/<uuid>?waitTime=50` to configure the estimated wait time as 50 minutes.

### Responses

#### 200 Create a custom waiting room page preview response

> Data is at `body["result"]`

```json
{
  "preview_url": "*string*"
}
```

#### 4XX Create a custom waiting room page preview response failure

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



## Update zone-level Waiting Room settings

**PUT** `/zones/{zone_id}/waiting_rooms/settings`



### Responses

#### 200 The updated zone-level Waiting Room settings

> Data is at `body["result"]`

```json
{
  "search_engine_crawler_bypass": "*boolean*"
}
```

#### 4XX The zone-level Waiting Room settings response failure

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



## Patch zone-level Waiting Room settings

**PATCH** `/zones/{zone_id}/waiting_rooms/settings`



### Responses

#### 200 The updated zone-level Waiting Room settings

> Data is at `body["result"]`

```json
{
  "search_engine_crawler_bypass": "*boolean*"
}
```

#### 4XX The zone-level Waiting Room settings response failure

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



## Get zone-level Waiting Room settings

**GET** `/zones/{zone_id}/waiting_rooms/settings`



### Responses

#### 200 The current zone-level Waiting Room settings

> Data is at `body["result"]`

```json
{
  "search_engine_crawler_bypass": "*boolean*"
}
```

#### 4XX The current zone-level Waiting Room settings response failure

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



## Update waiting room

**PUT** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}`

Updates a configured waiting room.

### Responses

#### 200 Update waiting room response

> Data is at `body["result"]`

```json
{
  "additional_routes": [
    {
      "host": "*string*",
      "path": "*string*"
    }
  ],
  "cookie_attributes": {
    "samesite": "*string*",
    "secure": "*string*"
  },
  "cookie_suffix": "*string*",
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "default_template_language": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "enabled_origin_commands": [
    "*string*"
  ],
  "host": "*string*",
  "id": "*string*",
  "json_response_enabled": "*boolean*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "next_event_prequeue_start_time": "*string*",
  "next_event_start_time": "*string*",
  "path": "*string*",
  "queue_all": "*boolean*",
  "queueing_method": "*string*",
  "queueing_status_code": "*integer*",
  "session_duration": "*integer*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Update waiting room response failure

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



## Patch waiting room

**PATCH** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}`

Patches a configured waiting room.

### Responses

#### 200 Patch waiting room response

> Data is at `body["result"]`

```json
{
  "additional_routes": [
    {
      "host": "*string*",
      "path": "*string*"
    }
  ],
  "cookie_attributes": {
    "samesite": "*string*",
    "secure": "*string*"
  },
  "cookie_suffix": "*string*",
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "default_template_language": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "enabled_origin_commands": [
    "*string*"
  ],
  "host": "*string*",
  "id": "*string*",
  "json_response_enabled": "*boolean*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "next_event_prequeue_start_time": "*string*",
  "next_event_start_time": "*string*",
  "path": "*string*",
  "queue_all": "*boolean*",
  "queueing_method": "*string*",
  "queueing_status_code": "*integer*",
  "session_duration": "*integer*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Patch waiting room response failure

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



## Waiting room details

**GET** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}`

Fetches a single configured waiting room.

### Responses

#### 200 Waiting room details response

> Data is at `body["result"]`

```json
{
  "additional_routes": [
    {
      "host": "*string*",
      "path": "*string*"
    }
  ],
  "cookie_attributes": {
    "samesite": "*string*",
    "secure": "*string*"
  },
  "cookie_suffix": "*string*",
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "default_template_language": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "enabled_origin_commands": [
    "*string*"
  ],
  "host": "*string*",
  "id": "*string*",
  "json_response_enabled": "*boolean*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "next_event_prequeue_start_time": "*string*",
  "next_event_start_time": "*string*",
  "path": "*string*",
  "queue_all": "*boolean*",
  "queueing_method": "*string*",
  "queueing_status_code": "*integer*",
  "session_duration": "*integer*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Waiting room details response failure

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



## Delete waiting room

**DELETE** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}`

Deletes a waiting room.

### Responses

#### 200 Delete waiting room response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete waiting room response failure

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



## Create event

**POST** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/events`

Only available for the Waiting Room Advanced subscription. Creates an event for a waiting room. An event takes place during a specified period of time, temporarily changing the behavior of a waiting room. While the event is active, some of the properties in the event's configuration may either override or inherit from the waiting room's configuration. Note that events cannot overlap with each other, so only one event can be active at a time.

### Responses

#### 200 Create event response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "event_end_time": "*string*",
  "event_start_time": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "prequeue_start_time": "*string*",
  "queueing_method": "*string*",
  "session_duration": "*integer*",
  "shuffle_at_event_start": "*boolean*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Create event response failure

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



## List events

**GET** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/events`

Lists events for a waiting room.

### Responses

#### 200 List events response

> Data is at `body["result"]`

```json
[
  {
    "created_on": "*string*",
    "custom_page_html": "*string*",
    "description": "*string*",
    "disable_session_renewal": "*boolean*",
    "event_end_time": "*string*",
    "event_start_time": "*string*",
    "id": "*string*",
    "modified_on": "*string*",
    "name": "*string*",
    "new_users_per_minute": "*integer*",
    "prequeue_start_time": "*string*",
    "queueing_method": "*string*",
    "session_duration": "*integer*",
    "shuffle_at_event_start": "*boolean*",
    "suspended": "*boolean*",
    "total_active_users": "*integer*",
    "turnstile_action": "*string*",
    "turnstile_mode": "*string*"
  }
]
```

#### 4XX List events response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Update event

**PUT** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/events/{event_id}`

Updates a configured event for a waiting room.

### Responses

#### 200 Update event response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "event_end_time": "*string*",
  "event_start_time": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "prequeue_start_time": "*string*",
  "queueing_method": "*string*",
  "session_duration": "*integer*",
  "shuffle_at_event_start": "*boolean*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Update event response failure

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



## Patch event

**PATCH** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/events/{event_id}`

Patches a configured event for a waiting room.

### Responses

#### 200 Patch event response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "event_end_time": "*string*",
  "event_start_time": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "prequeue_start_time": "*string*",
  "queueing_method": "*string*",
  "session_duration": "*integer*",
  "shuffle_at_event_start": "*boolean*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Patch event response failure

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



## Event details

**GET** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/events/{event_id}`

Fetches a single configured event for a waiting room.

### Responses

#### 200 Event details response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "event_end_time": "*string*",
  "event_start_time": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "prequeue_start_time": "*string*",
  "queueing_method": "*string*",
  "session_duration": "*integer*",
  "shuffle_at_event_start": "*boolean*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*",
  "turnstile_action": "*string*",
  "turnstile_mode": "*string*"
}
```

#### 4XX Event details response failure

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



## Delete event

**DELETE** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/events/{event_id}`

Deletes an event for a waiting room.

### Responses

#### 200 Delete event response

> Data is at `body["result"]`

```json
{
  "id": "*string*"
}
```

#### 4XX Delete event response failure

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



## Preview active event details

**GET** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/events/{event_id}/details`

Previews an event's configuration as if it was active. Inherited fields from the waiting room will be displayed with their current values.

### Responses

#### 200 Preview active event details response

> Data is at `body["result"]`

```json
{
  "created_on": "*string*",
  "custom_page_html": "*string*",
  "description": "*string*",
  "disable_session_renewal": "*boolean*",
  "event_end_time": "*string*",
  "event_start_time": "*string*",
  "id": "*string*",
  "modified_on": "*string*",
  "name": "*string*",
  "new_users_per_minute": "*integer*",
  "prequeue_start_time": "*string*",
  "queueing_method": "*string*",
  "session_duration": "*integer*",
  "shuffle_at_event_start": "*boolean*",
  "suspended": "*boolean*",
  "total_active_users": "*integer*"
}
```

#### 4XX Preview active event details response failure

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



## Replace Waiting Room Rules

**PUT** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/rules`

Only available for the Waiting Room Advanced subscription. Replaces all rules for a waiting room.

### Responses

#### 200 Replace Waiting Room Rules response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "expression": "*string*",
    "id": "*string*",
    "last_updated": "*string*",
    "version": "*string*"
  }
]
```

#### 4XX Replace Waiting Room Rules response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Create Waiting Room Rule

**POST** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/rules`

Only available for the Waiting Room Advanced subscription. Creates a rule for a waiting room.

### Responses

#### 200 Create Waiting Room Rule response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "expression": "*string*",
    "id": "*string*",
    "last_updated": "*string*",
    "version": "*string*"
  }
]
```

#### 4XX Create Waiting Room Rule response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## List Waiting Room Rules

**GET** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/rules`

Lists rules for a waiting room.

### Responses

#### 200 List Waiting Room Rules response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "expression": "*string*",
    "id": "*string*",
    "last_updated": "*string*",
    "version": "*string*"
  }
]
```

#### 4XX List Waiting Room Rules response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Patch Waiting Room Rule

**PATCH** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/rules/{rule_id}`

Patches a rule for a waiting room.

### Responses

#### 200 Patch Waiting Room Rule response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "expression": "*string*",
    "id": "*string*",
    "last_updated": "*string*",
    "version": "*string*"
  }
]
```

#### 4XX Patch Waiting Room Rule response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Delete Waiting Room Rule

**DELETE** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/rules/{rule_id}`

Deletes a rule for a waiting room.

### Responses

#### 200 Delete Waiting Room Rule response

> Data is at `body["result"]`

```json
[
  {
    "action": "*string*",
    "description": "*string*",
    "enabled": "*boolean*",
    "expression": "*string*",
    "id": "*string*",
    "last_updated": "*string*",
    "version": "*string*"
  }
]
```

#### 4XX Delete Waiting Room Rule response failure

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
  "result_info": {
    "count": "*number*",
    "page": "*number*",
    "per_page": "*number*",
    "total_count": "*number*"
  },
  "success": "*boolean*"
}
```



## Get waiting room status

**GET** `/zones/{zone_id}/waiting_rooms/{waiting_room_id}/status`

Fetches the status of a configured waiting room. Response fields include:
1. `status`: String indicating the status of the waiting room. The possible status are:
	- **not_queueing** indicates that the configured thresholds have not been met and all users are going through to the origin.
	- **queueing** indicates that the thresholds have been met and some users are held in the waiting room.
	- **event_prequeueing** indicates that an event is active and is currently prequeueing users before it starts.
	- **suspended** indicates that the room is suspended.
2. `event_id`: String of the current event's `id` if an event is active, otherwise an empty string.
3. `estimated_queued_users`: Integer of the estimated number of users currently waiting in the queue.
4. `estimated_total_active_users`: Integer of the estimated number of users currently active on the origin.
5. `max_estimated_time_minutes`: Integer of the maximum estimated time currently presented to the users.

### Responses

#### 200 Get waiting room status response

> Data is at `body["result"]`

```json
{
  "estimated_queued_users": "*integer*",
  "estimated_total_active_users": "*integer*",
  "event_id": "*string*",
  "max_estimated_time_minutes": "*integer*",
  "status": "*string*"
}
```

#### 4XX Get waiting room status response failure

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


