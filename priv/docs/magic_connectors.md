# Magic Connectors

## Add a connector to your account

**POST** `/accounts/{account_id}/magic/connectors`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "activated": "*boolean*",
  "device": {
    "id": "*string*",
    "serial_number": "*string*"
  },
  "id": "*string*",
  "interrupt_window_duration_hours": "*number*",
  "interrupt_window_hour_of_day": "*number*",
  "last_heartbeat": "*string*",
  "last_seen_version": "*string*",
  "last_updated": "*string*",
  "license_key": "*string*",
  "notes": "*string*",
  "timezone": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 409 Conflict

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Connectors

**GET** `/accounts/{account_id}/magic/connectors`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
[
  {
    "activated": "*boolean*",
    "device": {
      "id": null,
      "serial_number": "*string*"
    },
    "id": "*string*",
    "interrupt_window_duration_hours": "*number*",
    "interrupt_window_hour_of_day": "*number*",
    "last_heartbeat": "*string*",
    "last_seen_version": "*string*",
    "last_updated": "*string*",
    "license_key": "*string*",
    "notes": "*string*",
    "timezone": "*string*"
  }
]
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Replace Connector or Re-provision License Key

**PUT** `/accounts/{account_id}/magic/connectors/{connector_id}`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "activated": "*boolean*",
  "device": {
    "id": "*string*",
    "serial_number": "*string*"
  },
  "id": "*string*",
  "interrupt_window_duration_hours": "*number*",
  "interrupt_window_hour_of_day": "*number*",
  "last_heartbeat": "*string*",
  "last_seen_version": "*string*",
  "last_updated": "*string*",
  "license_key": "*string*",
  "notes": "*string*",
  "timezone": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Edit Connector to update specific properties or Re-provision License Key

**PATCH** `/accounts/{account_id}/magic/connectors/{connector_id}`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "activated": "*boolean*",
  "device": {
    "id": "*string*",
    "serial_number": "*string*"
  },
  "id": "*string*",
  "interrupt_window_duration_hours": "*number*",
  "interrupt_window_hour_of_day": "*number*",
  "last_heartbeat": "*string*",
  "last_seen_version": "*string*",
  "last_updated": "*string*",
  "license_key": "*string*",
  "notes": "*string*",
  "timezone": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Fetch Connector

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "activated": "*boolean*",
  "device": {
    "id": "*string*",
    "serial_number": "*string*"
  },
  "id": "*string*",
  "interrupt_window_duration_hours": "*number*",
  "interrupt_window_hour_of_day": "*number*",
  "last_heartbeat": "*string*",
  "last_seen_version": "*string*",
  "last_updated": "*string*",
  "license_key": "*string*",
  "notes": "*string*",
  "timezone": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## Remove a connector from your account

**DELETE** `/accounts/{account_id}/magic/connectors/{connector_id}`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "activated": "*boolean*",
  "device": {
    "id": "*string*",
    "serial_number": "*string*"
  },
  "id": "*string*",
  "interrupt_window_duration_hours": "*number*",
  "interrupt_window_hour_of_day": "*number*",
  "last_heartbeat": "*string*",
  "last_seen_version": "*string*",
  "last_updated": "*string*",
  "license_key": "*string*",
  "notes": "*string*",
  "timezone": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "result": {},
  "success": "*boolean*"
}
```



## List Events

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "cursor": "*string*",
  "items": [
    {
      "a": "*number*",
      "k": "*string*",
      "n": "*number*",
      "t": "*number*"
    }
  ]
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Too Many Requests

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get latest Events

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events/latest`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "items": [
    {
      "e": {},
      "n": "*number*",
      "t": "*number*"
    }
  ]
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Too Many Requests

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get Event

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/events/{event_t}.{event_n}`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "e": {},
  "n": "*number*",
  "t": "*number*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Too Many Requests

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## List Snapshots

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "cursor": "*string*",
  "items": [
    {
      "a": "*number*",
      "t": "*number*"
    }
  ]
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Too Many Requests

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get latest Snapshots

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots/latest`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "count": "*number*",
  "items": [
    {
      "memory_pressure_full_60s": "*number*",
      "kernel_processes_running": "*number*",
      "snmp_icmp_out_addr_masks": "*number*",
      "snmp_icmp_in_parm_probs": "*number*",
      "kernel_btime": "*number*",
      "cpu_count": "*number*",
      "memory_writeback_tmp_bytes": "*number*",
      "snmp_icmp_out_echo_reps": "*number*",
      "memory_hugepages_total": "*number*",
      "count_reclaim_failures": "*number*",
      "memory_pressure_full_10s": "*number*",
      "memory_low_total_bytes": "*number*",
      "bonds": [
        null
      ],
      "memory_kernel_stack_bytes": "*number*",
      "snmp_icmp_in_dest_unreachs": "*number*",
      "snmp_tcp_out_rsts": "*number*",
      "snmp_icmp_in_addr_mask_reps": "*number*",
      "snmp_icmp_in_errors": "*number*",
      "memory_vmalloc_chunk_bytes": "*number*",
      "snmp_icmp_out_dest_unreachs": "*number*",
      "snmp_icmp_in_echos": "*number*",
      "cpu_time_nice_ms": "*number*",
      "memory_vmalloc_used_bytes": "*number*",
      "memory_slab_bytes": "*number*",
      "snmp_tcp_retrans_segs": "*number*",
      "cpu_time_guest_nice_ms": "*number*",
      "kernel_processes_blocked": "*number*",
      "snmp_icmp_in_timestamp_reps": "*number*",
      "snmp_ip_forwarding_enabled": "*boolean*",
      "memory_free_bytes": "*number*",
      "snmp_tcp_out_segs": "*number*",
      "snmp_icmp_out_addr_mask_reps": "*number*",
      "memory_pressure_full_total_us": "*number*",
      "memory_vmalloc_total_bytes": "*number*",
      "mounts": [
        null
      ],
      "memory_secondary_page_tables_bytes": "*number*",
      "snmp_tcp_estab_resets": "*number*",
      "cpu_time_softirq_ms": "*number*",
      "memory_s_unreclaim_bytes": "*number*",
      "uptime_total_ms": "*number*",
      "memory_hugepages_surp": "*number*",
      "snmp_ip_reasm_reqds": "*number*",
      "memory_swap_total_bytes": "*number*",
      "memory_swap_free_bytes": "*number*",
      "memory_shmem_pmd_mapped_bytes": "*number*",
      "snmp_tcp_rto_max": "*number*",
      "memory_k_reclaimable_bytes": "*number*",
      "memory_anon_hugepages_bytes": "*number*",
      "memory_anon_pages_bytes": "*number*",
      "snmp_ip_frag_fails": "*number*",
      "cpu_time_iowait_ms": "*number*",
      "snmp_icmp_out_msgs": "*number*",
      "snmp_icmp_out_timestamp_reps": "*number*",
      "load_average_cur": "*number*",
      "snmp_ip_in_delivers": "*number*",
      "snmp_ip_in_unknown_protos": "*number*",
      "snmp_ip_in_receives": "*number*",
      "tunnels": [
        null
      ],
      "load_average_15m": "*number*",
      "snmp_icmp_in_msgs": "*number*",
      "memory_inactive_bytes": "*number*",
      "count_transmit_failures": "*number*",
      "kernel_processes": "*number*",
      "memory_cma_free_bytes": "*number*",
      "cpu_pressure_60s": "*number*",
      "snmp_icmp_in_timestamps": "*number*",
      "dhcp_leases": [
        null
      ],
      "snmp_udp_in_datagrams": "*number*",
      "snmp_icmp_out_parm_probs": "*number*",
      "snmp_ip_in_hdr_errors": "*number*",
      "snmp_icmp_out_redirects": "*number*",
      "snmp_udp_no_ports": "*number*",
      "snmp_tcp_active_opens": "*number*",
      "ha_value": "*number*",
      "snmp_ip_frag_creates": "*number*",
      "snmp_tcp_rto_min": "*number*",
      "cpu_time_idle_ms": "*number*",
      "memory_commit_limit_bytes": "*number*",
      "interfaces": [
        null
      ],
      "snmp_icmp_in_time_excds": "*number*",
      "cpu_time_guest_ms": "*number*",
      "load_average_1m": "*number*",
      "snmp_ip_in_discards": "*number*",
      "io_pressure_some_total_us": "*number*",
      "memory_bounce_bytes": "*number*",
      "snmp_ip_out_no_routes": "*number*",
      "netdevs": [
        null
      ],
      "system_boot_time_s": "*number*",
      "snmp_ip_frag_oks": "*number*",
      "snmp_tcp_max_conn": "*number*",
      "memory_z_swapped_bytes": "*number*",
      "memory_per_cpu_bytes": "*number*",
      "cpu_time_system_ms": "*number*",
      "memory_total_bytes": "*number*",
      "snmp_ip_out_requests": "*number*",
      "memory_s_reclaimable_bytes": "*number*",
      "snmp_ip_reasm_timeout": "*number*",
      "io_pressure_some_60s": "*number*",
      "memory_dirty_bytes": "*number*",
      "io_pressure_full_60s": "*number*",
      "snmp_icmp_in_addr_masks": "*number*",
      "snmp_tcp_in_errs": "*number*",
      "memory_mapped_bytes": "*number*",
      "cpu_time_steal_ms": "*number*",
      "memory_pressure_some_60s": "*number*",
      "memory_active_bytes": "*number*",
      "snmp_icmp_out_errors": "*number*",
      "snmp_ip_reasm_fails": "*number*",
      "snmp_icmp_in_src_quenchs": "*number*",
      "cpu_time_user_ms": "*number*",
      "snmp_tcp_curr_estab": "*number*",
      "uptime_idle_ms": "*number*",
      "v": "*string*",
      "snmp_tcp_attempt_fails": "*number*",
      "snmp_ip_reasm_oks": "*number*",
      "load_average_5m": "*number*",
      "snmp_icmp_in_csum_errors": "*number*",
      "memory_pressure_some_total_us": "*number*",
      "memory_high_total_bytes": "*number*",
      "snmp_icmp_out_timestamps": "*number*",
      "snmp_udp_out_datagrams": "*number*",
      "snmp_tcp_in_csum_errors": "*number*",
      "cpu_pressure_total_us": "*number*",
      "cpu_pressure_300s": "*number*",
      "memory_z_swap_bytes": "*number*",
      "io_pressure_some_300s": "*number*",
      "memory_available_bytes": "*number*",
      "snmp_icmp_in_redirects": "*number*",
      "cpu_pressure_10s": "*number*",
      "io_pressure_full_total_us": "*number*",
      "snmp_ip_in_addr_errors": "*number*",
      "memory_pressure_full_300s": "*number*",
      "memory_hugepagesize_bytes": "*number*",
      "thermals": [
        null
      ],
      "memory_swap_cached_bytes": "*number*",
      "io_pressure_full_300s": "*number*",
      "kernel_ctxt": "*number*",
      "memory_hugepages_free": "*number*",
      "snmp_tcp_passive_opens": "*number*",
      "memory_pressure_some_300s": "*number*",
      "memory_cached_bytes": "*number*",
      "snmp_ip_default_ttl": "*number*",
      "snmp_ip_forw_datagrams": "*number*",
      "snmp_tcp_in_segs": "*number*",
      "memory_shmem_hugepages_bytes": "*number*",
      "memory_buffers_bytes": "*number*",
      "io_pressure_some_10s": "*number*",
      "memory_hugepages_rsvd": "*number*",
      "memory_committed_as_bytes": "*number*",
      "snmp_icmp_out_echos": "*number*",
      "cpu_time_irq_ms": "*number*",
      "t": "*number*",
      "snmp_icmp_out_src_quenchs": "*number*",
      "count_record_failed": "*number*",
      "memory_page_tables_bytes": "*number*",
      "snmp_ip_out_discards": "*number*",
      "snmp_udp_in_errors": "*number*",
      "memory_low_free_bytes": "*number*",
      "memory_shmem_bytes": "*number*",
      "count_reclaimed_paths": "*number*",
      "memory_cma_total_bytes": "*number*",
      "memory_writeback_bytes": "*number*",
      "snmp_icmp_out_time_excds": "*number*",
      "load_average_max": "*number*",
      "io_pressure_full_10s": "*number*",
      "memory_high_free_bytes": "*number*",
      "memory_pressure_some_10s": "*number*",
      "disks": [
        null
      ],
      "snmp_icmp_in_echo_reps": "*number*",
      "ha_state": "*string*"
    }
  ]
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Too Many Requests

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```



## Get Snapshot

**GET** `/accounts/{account_id}/magic/connectors/{connector_id}/telemetry/snapshots/{snapshot_t}`



### Responses

#### 200 OK

> Data is at `body["result"]`

```json
{
  "memory_pressure_full_60s": "*number*",
  "kernel_processes_running": "*number*",
  "snmp_icmp_out_addr_masks": "*number*",
  "snmp_icmp_in_parm_probs": "*number*",
  "kernel_btime": "*number*",
  "cpu_count": "*number*",
  "memory_writeback_tmp_bytes": "*number*",
  "snmp_icmp_out_echo_reps": "*number*",
  "memory_hugepages_total": "*number*",
  "count_reclaim_failures": "*number*",
  "memory_pressure_full_10s": "*number*",
  "memory_low_total_bytes": "*number*",
  "bonds": [
    {
      "name": "*string*",
      "status": "*string*"
    }
  ],
  "memory_kernel_stack_bytes": "*number*",
  "snmp_icmp_in_dest_unreachs": "*number*",
  "snmp_tcp_out_rsts": "*number*",
  "snmp_icmp_in_addr_mask_reps": "*number*",
  "snmp_icmp_in_errors": "*number*",
  "memory_vmalloc_chunk_bytes": "*number*",
  "snmp_icmp_out_dest_unreachs": "*number*",
  "snmp_icmp_in_echos": "*number*",
  "cpu_time_nice_ms": "*number*",
  "memory_vmalloc_used_bytes": "*number*",
  "memory_slab_bytes": "*number*",
  "snmp_tcp_retrans_segs": "*number*",
  "cpu_time_guest_nice_ms": "*number*",
  "kernel_processes_blocked": "*number*",
  "snmp_icmp_in_timestamp_reps": "*number*",
  "snmp_ip_forwarding_enabled": "*boolean*",
  "memory_free_bytes": "*number*",
  "snmp_tcp_out_segs": "*number*",
  "snmp_icmp_out_addr_mask_reps": "*number*",
  "memory_pressure_full_total_us": "*number*",
  "memory_vmalloc_total_bytes": "*number*",
  "mounts": [
    {
      "available_bytes": "*number*",
      "connector_id": "*string*",
      "file_system": "*string*",
      "is_read_only": "*boolean*",
      "is_removable": "*boolean*",
      "kind": "*string*",
      "mount_point": "*string*",
      "name": "*string*",
      "total_bytes": "*number*"
    }
  ],
  "memory_secondary_page_tables_bytes": "*number*",
  "snmp_tcp_estab_resets": "*number*",
  "cpu_time_softirq_ms": "*number*",
  "memory_s_unreclaim_bytes": "*number*",
  "uptime_total_ms": "*number*",
  "memory_hugepages_surp": "*number*",
  "snmp_ip_reasm_reqds": "*number*",
  "memory_swap_total_bytes": "*number*",
  "memory_swap_free_bytes": "*number*",
  "memory_shmem_pmd_mapped_bytes": "*number*",
  "snmp_tcp_rto_max": "*number*",
  "memory_k_reclaimable_bytes": "*number*",
  "memory_anon_hugepages_bytes": "*number*",
  "memory_anon_pages_bytes": "*number*",
  "snmp_ip_frag_fails": "*number*",
  "cpu_time_iowait_ms": "*number*",
  "snmp_icmp_out_msgs": "*number*",
  "snmp_icmp_out_timestamp_reps": "*number*",
  "load_average_cur": "*number*",
  "snmp_ip_in_delivers": "*number*",
  "snmp_ip_in_unknown_protos": "*number*",
  "snmp_ip_in_receives": "*number*",
  "tunnels": [
    {
      "connector_id": "*string*",
      "health_state": "*string*",
      "health_value": "*number*",
      "interface_name": "*string*",
      "probed_mtu": "*number*",
      "recent_healthy_pings": "*number*",
      "recent_unhealthy_pings": "*number*",
      "tunnel_id": "*string*"
    }
  ],
  "load_average_15m": "*number*",
  "snmp_icmp_in_msgs": "*number*",
  "memory_inactive_bytes": "*number*",
  "count_transmit_failures": "*number*",
  "kernel_processes": "*number*",
  "memory_cma_free_bytes": "*number*",
  "cpu_pressure_60s": "*number*",
  "snmp_icmp_in_timestamps": "*number*",
  "dhcp_leases": [
    {
      "client_id": "*string*",
      "connector_id": "*string*",
      "expiry_time": "*number*",
      "hostname": "*string*",
      "interface_name": "*string*",
      "ip_address": "*string*",
      "mac_address": "*string*"
    }
  ],
  "snmp_udp_in_datagrams": "*number*",
  "snmp_icmp_out_parm_probs": "*number*",
  "snmp_ip_in_hdr_errors": "*number*",
  "snmp_icmp_out_redirects": "*number*",
  "snmp_udp_no_ports": "*number*",
  "snmp_tcp_active_opens": "*number*",
  "ha_value": "*number*",
  "snmp_ip_frag_creates": "*number*",
  "snmp_tcp_rto_min": "*number*",
  "cpu_time_idle_ms": "*number*",
  "memory_commit_limit_bytes": "*number*",
  "interfaces": [
    {
      "connector_id": "*string*",
      "ip_addresses": [
        null
      ],
      "name": "*string*",
      "operstate": "*string*",
      "speed": "*number*"
    }
  ],
  "snmp_icmp_in_time_excds": "*number*",
  "cpu_time_guest_ms": "*number*",
  "load_average_1m": "*number*",
  "snmp_ip_in_discards": "*number*",
  "io_pressure_some_total_us": "*number*",
  "memory_bounce_bytes": "*number*",
  "snmp_ip_out_no_routes": "*number*",
  "netdevs": [
    {
      "connector_id": "*string*",
      "name": "*string*",
      "recv_bytes": "*number*",
      "recv_compressed": "*number*",
      "recv_drop": "*number*",
      "recv_errs": "*number*",
      "recv_fifo": "*number*",
      "recv_frame": "*number*",
      "recv_multicast": "*number*",
      "recv_packets": "*number*",
      "sent_bytes": "*number*",
      "sent_carrier": "*number*",
      "sent_colls": "*number*",
      "sent_compressed": "*number*",
      "sent_drop": "*number*",
      "sent_errs": "*number*",
      "sent_fifo": "*number*",
      "sent_packets": "*number*"
    }
  ],
  "system_boot_time_s": "*number*",
  "snmp_ip_frag_oks": "*number*",
  "snmp_tcp_max_conn": "*number*",
  "memory_z_swapped_bytes": "*number*",
  "memory_per_cpu_bytes": "*number*",
  "cpu_time_system_ms": "*number*",
  "memory_total_bytes": "*number*",
  "snmp_ip_out_requests": "*number*",
  "memory_s_reclaimable_bytes": "*number*",
  "snmp_ip_reasm_timeout": "*number*",
  "io_pressure_some_60s": "*number*",
  "memory_dirty_bytes": "*number*",
  "io_pressure_full_60s": "*number*",
  "snmp_icmp_in_addr_masks": "*number*",
  "snmp_tcp_in_errs": "*number*",
  "memory_mapped_bytes": "*number*",
  "cpu_time_steal_ms": "*number*",
  "memory_pressure_some_60s": "*number*",
  "memory_active_bytes": "*number*",
  "snmp_icmp_out_errors": "*number*",
  "snmp_ip_reasm_fails": "*number*",
  "snmp_icmp_in_src_quenchs": "*number*",
  "cpu_time_user_ms": "*number*",
  "snmp_tcp_curr_estab": "*number*",
  "uptime_idle_ms": "*number*",
  "v": "*string*",
  "snmp_tcp_attempt_fails": "*number*",
  "snmp_ip_reasm_oks": "*number*",
  "load_average_5m": "*number*",
  "snmp_icmp_in_csum_errors": "*number*",
  "memory_pressure_some_total_us": "*number*",
  "memory_high_total_bytes": "*number*",
  "snmp_icmp_out_timestamps": "*number*",
  "snmp_udp_out_datagrams": "*number*",
  "snmp_tcp_in_csum_errors": "*number*",
  "cpu_pressure_total_us": "*number*",
  "cpu_pressure_300s": "*number*",
  "memory_z_swap_bytes": "*number*",
  "io_pressure_some_300s": "*number*",
  "memory_available_bytes": "*number*",
  "snmp_icmp_in_redirects": "*number*",
  "cpu_pressure_10s": "*number*",
  "io_pressure_full_total_us": "*number*",
  "snmp_ip_in_addr_errors": "*number*",
  "memory_pressure_full_300s": "*number*",
  "memory_hugepagesize_bytes": "*number*",
  "thermals": [
    {
      "connector_id": "*string*",
      "critical_celcius": "*number*",
      "current_celcius": "*number*",
      "label": "*string*",
      "max_celcius": "*number*"
    }
  ],
  "memory_swap_cached_bytes": "*number*",
  "io_pressure_full_300s": "*number*",
  "kernel_ctxt": "*number*",
  "memory_hugepages_free": "*number*",
  "snmp_tcp_passive_opens": "*number*",
  "memory_pressure_some_300s": "*number*",
  "memory_cached_bytes": "*number*",
  "snmp_ip_default_ttl": "*number*",
  "snmp_ip_forw_datagrams": "*number*",
  "snmp_tcp_in_segs": "*number*",
  "memory_shmem_hugepages_bytes": "*number*",
  "memory_buffers_bytes": "*number*",
  "io_pressure_some_10s": "*number*",
  "memory_hugepages_rsvd": "*number*",
  "memory_committed_as_bytes": "*number*",
  "snmp_icmp_out_echos": "*number*",
  "cpu_time_irq_ms": "*number*",
  "t": "*number*",
  "snmp_icmp_out_src_quenchs": "*number*",
  "count_record_failed": "*number*",
  "memory_page_tables_bytes": "*number*",
  "snmp_ip_out_discards": "*number*",
  "snmp_udp_in_errors": "*number*",
  "memory_low_free_bytes": "*number*",
  "memory_shmem_bytes": "*number*",
  "count_reclaimed_paths": "*number*",
  "memory_cma_total_bytes": "*number*",
  "memory_writeback_bytes": "*number*",
  "snmp_icmp_out_time_excds": "*number*",
  "load_average_max": "*number*",
  "io_pressure_full_10s": "*number*",
  "memory_high_free_bytes": "*number*",
  "memory_pressure_some_10s": "*number*",
  "disks": [
    {
      "connector_id": "*string*",
      "discards": "*number*",
      "discards_merged": "*number*",
      "flushes": "*number*",
      "in_progress": "*number*",
      "major": "*number*",
      "merged": "*number*",
      "minor": "*number*",
      "name": "*string*",
      "reads": "*number*",
      "sectors_discarded": "*number*",
      "sectors_read": "*number*",
      "sectors_written": "*number*",
      "time_discarding_ms": "*number*",
      "time_flushing_ms": "*number*",
      "time_in_progress_ms": "*number*",
      "time_reading_ms": "*number*",
      "time_writing_ms": "*number*",
      "weighted_time_in_progress_ms": "*number*",
      "writes": "*number*",
      "writes_merged": "*number*"
    }
  ],
  "snmp_icmp_in_echo_reps": "*number*",
  "ha_state": "*string*"
}
```

#### 400 Bad Request

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 401 Unauthorized

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 403 Forbidden

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 404 Not Found

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 429 Too Many Requests

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```

#### 500 Internal Server Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "messages": [
    {
      "code": "*number*",
      "message": "*string*"
    }
  ],
  "success": "*boolean*"
}
```


