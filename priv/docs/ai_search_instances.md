# AI Search Instances

## Create new instances.

**POST** `/accounts/{account_id}/ai-search/instances`



### Responses

#### 201 Returns the created Object

> Data is at `body["result"]`

```json
{
  "ai_gateway_id": "*string*",
  "ai_search_model": null,
  "cache": "*boolean*",
  "cache_threshold": "*string*",
  "chunk_overlap": "*integer*",
  "chunk_size": "*integer*",
  "created_at": "*string*",
  "created_by": "*string*",
  "custom_metadata": [
    {
      "data_type": "*string*",
      "field_name": "*string*"
    }
  ],
  "embedding_model": null,
  "enable": "*boolean*",
  "hybrid_search_enabled": "*boolean*",
  "id": "*string*",
  "last_activity": "*string*",
  "max_num_results": "*integer*",
  "metadata": {
    "created_from_aisearch_wizard": "*boolean*",
    "worker_domain": "*string*"
  },
  "modified_at": "*string*",
  "modified_by": "*string*",
  "paused": "*boolean*",
  "public_endpoint_id": "*string*",
  "public_endpoint_params": {
    "authorized_hosts": [
      "*string*"
    ],
    "chat_completions_endpoint": {
      "disabled": "*boolean*"
    },
    "enabled": "*boolean*",
    "mcp": {
      "description": "*string*",
      "disabled": "*boolean*"
    },
    "rate_limit": {
      "period_ms": "*integer*",
      "requests": "*integer*",
      "technique": "*string*"
    },
    "search_endpoint": {
      "disabled": "*boolean*"
    }
  },
  "reranking": "*boolean*",
  "reranking_model": null,
  "rewrite_model": null,
  "rewrite_query": "*boolean*",
  "score_threshold": "*number*",
  "source": "*string*",
  "source_params": {
    "exclude_items": [
      "*string*"
    ],
    "include_items": [
      "*string*"
    ],
    "prefix": "*string*",
    "r2_jurisdiction": "*string*",
    "web_crawler": {
      "parse_options": {
        "include_headers": {},
        "include_images": "*boolean*",
        "specific_sitemaps": [
          "*string*"
        ],
        "use_browser_rendering": "*boolean*"
      },
      "parse_type": "*string*",
      "store_options": {
        "r2_jurisdiction": "*string*",
        "storage_id": "*string*",
        "storage_type": "*string*"
      }
    }
  },
  "status": "*string*",
  "token_id": "*string*",
  "type": "*string*",
  "vectorize_name": "*string*"
}
```

#### 400 Input Validation Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*",
      "path": [
        "*string*"
      ]
    }
  ],
  "success": "*boolean*"
}
```



## List instances.

**GET** `/accounts/{account_id}/ai-search/instances`



### Responses

#### 200 List objects

> Data is at `body["result"]`

```json
[
  {
    "ai_gateway_id": "*string*",
    "ai_search_model": null,
    "cache": "*boolean*",
    "cache_threshold": "*string*",
    "chunk_overlap": "*integer*",
    "chunk_size": "*integer*",
    "created_at": "*string*",
    "created_by": "*string*",
    "custom_metadata": [
      {
        "data_type": "*string*",
        "field_name": "*string*"
      }
    ],
    "embedding_model": null,
    "enable": "*boolean*",
    "hybrid_search_enabled": "*boolean*",
    "id": "*string*",
    "last_activity": "*string*",
    "max_num_results": "*integer*",
    "metadata": {
      "created_from_aisearch_wizard": "*boolean*",
      "worker_domain": "*string*"
    },
    "modified_at": "*string*",
    "modified_by": "*string*",
    "paused": "*boolean*",
    "public_endpoint_id": "*string*",
    "public_endpoint_params": {
      "authorized_hosts": [
        "*string*"
      ],
      "chat_completions_endpoint": {
        "disabled": "*boolean*"
      },
      "enabled": "*boolean*",
      "mcp": {
        "description": "*string*",
        "disabled": "*boolean*"
      },
      "rate_limit": {
        "period_ms": "*integer*",
        "requests": "*integer*",
        "technique": "*string*"
      },
      "search_endpoint": {
        "disabled": "*boolean*"
      }
    },
    "reranking": "*boolean*",
    "reranking_model": null,
    "rewrite_model": null,
    "rewrite_query": "*boolean*",
    "score_threshold": "*number*",
    "source": "*string*",
    "source_params": {
      "exclude_items": [
        "*string*"
      ],
      "include_items": [
        "*string*"
      ],
      "prefix": "*string*",
      "r2_jurisdiction": "*string*",
      "web_crawler": {
        "parse_options": {
          "include_headers": {},
          "include_images": "*boolean*",
          "specific_sitemaps": [
            null
          ],
          "use_browser_rendering": "*boolean*"
        },
        "parse_type": "*string*",
        "store_options": {
          "r2_jurisdiction": "*string*",
          "storage_id": "*string*",
          "storage_type": "*string*"
        }
      }
    },
    "status": "*string*",
    "token_id": "*string*",
    "type": "*string*",
    "vectorize_name": "*string*"
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



## Update instances.

**PUT** `/accounts/{account_id}/ai-search/instances/{id}`



### Responses

#### 200 Returns the updated Object

> Data is at `body["result"]`

```json
{
  "ai_gateway_id": "*string*",
  "ai_search_model": null,
  "cache": "*boolean*",
  "cache_threshold": "*string*",
  "chunk_overlap": "*integer*",
  "chunk_size": "*integer*",
  "created_at": "*string*",
  "created_by": "*string*",
  "custom_metadata": [
    {
      "data_type": "*string*",
      "field_name": "*string*"
    }
  ],
  "embedding_model": null,
  "enable": "*boolean*",
  "hybrid_search_enabled": "*boolean*",
  "id": "*string*",
  "last_activity": "*string*",
  "max_num_results": "*integer*",
  "metadata": {
    "created_from_aisearch_wizard": "*boolean*",
    "worker_domain": "*string*"
  },
  "modified_at": "*string*",
  "modified_by": "*string*",
  "paused": "*boolean*",
  "public_endpoint_id": "*string*",
  "public_endpoint_params": {
    "authorized_hosts": [
      "*string*"
    ],
    "chat_completions_endpoint": {
      "disabled": "*boolean*"
    },
    "enabled": "*boolean*",
    "mcp": {
      "description": "*string*",
      "disabled": "*boolean*"
    },
    "rate_limit": {
      "period_ms": "*integer*",
      "requests": "*integer*",
      "technique": "*string*"
    },
    "search_endpoint": {
      "disabled": "*boolean*"
    }
  },
  "reranking": "*boolean*",
  "reranking_model": null,
  "rewrite_model": null,
  "rewrite_query": "*boolean*",
  "score_threshold": "*number*",
  "source": "*string*",
  "source_params": {
    "exclude_items": [
      "*string*"
    ],
    "include_items": [
      "*string*"
    ],
    "prefix": "*string*",
    "r2_jurisdiction": "*string*",
    "web_crawler": {
      "parse_options": {
        "include_headers": {},
        "include_images": "*boolean*",
        "specific_sitemaps": [
          "*string*"
        ],
        "use_browser_rendering": "*boolean*"
      },
      "parse_type": "*string*",
      "store_options": {
        "r2_jurisdiction": "*string*",
        "storage_id": "*string*",
        "storage_type": "*string*"
      }
    }
  },
  "status": "*string*",
  "token_id": "*string*",
  "type": "*string*",
  "vectorize_name": "*string*"
}
```

#### 400 Input Validation Error

```json
{
  "errors": [
    {
      "code": "*number*",
      "message": "*string*",
      "path": [
        "*string*"
      ]
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
  "success": "*boolean*"
}
```



## Read instances.

**GET** `/accounts/{account_id}/ai-search/instances/{id}`



### Responses

#### 200 Returns a single object if found

> Data is at `body["result"]`

```json
{
  "ai_gateway_id": "*string*",
  "ai_search_model": null,
  "cache": "*boolean*",
  "cache_threshold": "*string*",
  "chunk_overlap": "*integer*",
  "chunk_size": "*integer*",
  "created_at": "*string*",
  "created_by": "*string*",
  "custom_metadata": [
    {
      "data_type": "*string*",
      "field_name": "*string*"
    }
  ],
  "embedding_model": null,
  "enable": "*boolean*",
  "hybrid_search_enabled": "*boolean*",
  "id": "*string*",
  "last_activity": "*string*",
  "max_num_results": "*integer*",
  "metadata": {
    "created_from_aisearch_wizard": "*boolean*",
    "worker_domain": "*string*"
  },
  "modified_at": "*string*",
  "modified_by": "*string*",
  "paused": "*boolean*",
  "public_endpoint_id": "*string*",
  "public_endpoint_params": {
    "authorized_hosts": [
      "*string*"
    ],
    "chat_completions_endpoint": {
      "disabled": "*boolean*"
    },
    "enabled": "*boolean*",
    "mcp": {
      "description": "*string*",
      "disabled": "*boolean*"
    },
    "rate_limit": {
      "period_ms": "*integer*",
      "requests": "*integer*",
      "technique": "*string*"
    },
    "search_endpoint": {
      "disabled": "*boolean*"
    }
  },
  "reranking": "*boolean*",
  "reranking_model": null,
  "rewrite_model": null,
  "rewrite_query": "*boolean*",
  "score_threshold": "*number*",
  "source": "*string*",
  "source_params": {
    "exclude_items": [
      "*string*"
    ],
    "include_items": [
      "*string*"
    ],
    "prefix": "*string*",
    "r2_jurisdiction": "*string*",
    "web_crawler": {
      "parse_options": {
        "include_headers": {},
        "include_images": "*boolean*",
        "specific_sitemaps": [
          "*string*"
        ],
        "use_browser_rendering": "*boolean*"
      },
      "parse_type": "*string*",
      "store_options": {
        "r2_jurisdiction": "*string*",
        "storage_id": "*string*",
        "storage_type": "*string*"
      }
    }
  },
  "status": "*string*",
  "token_id": "*string*",
  "type": "*string*",
  "vectorize_name": "*string*"
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
  "success": "*boolean*"
}
```



## Delete instances.

**DELETE** `/accounts/{account_id}/ai-search/instances/{id}`



### Responses

#### 200 Returns the Object if it was successfully deleted

> Data is at `body["result"]`

```json
{
  "ai_gateway_id": "*string*",
  "ai_search_model": null,
  "cache": "*boolean*",
  "cache_threshold": "*string*",
  "chunk_overlap": "*integer*",
  "chunk_size": "*integer*",
  "created_at": "*string*",
  "created_by": "*string*",
  "custom_metadata": [
    {
      "data_type": "*string*",
      "field_name": "*string*"
    }
  ],
  "embedding_model": null,
  "enable": "*boolean*",
  "hybrid_search_enabled": "*boolean*",
  "id": "*string*",
  "last_activity": "*string*",
  "max_num_results": "*integer*",
  "metadata": {
    "created_from_aisearch_wizard": "*boolean*",
    "worker_domain": "*string*"
  },
  "modified_at": "*string*",
  "modified_by": "*string*",
  "paused": "*boolean*",
  "public_endpoint_id": "*string*",
  "public_endpoint_params": {
    "authorized_hosts": [
      "*string*"
    ],
    "chat_completions_endpoint": {
      "disabled": "*boolean*"
    },
    "enabled": "*boolean*",
    "mcp": {
      "description": "*string*",
      "disabled": "*boolean*"
    },
    "rate_limit": {
      "period_ms": "*integer*",
      "requests": "*integer*",
      "technique": "*string*"
    },
    "search_endpoint": {
      "disabled": "*boolean*"
    }
  },
  "reranking": "*boolean*",
  "reranking_model": null,
  "rewrite_model": null,
  "rewrite_query": "*boolean*",
  "score_threshold": "*number*",
  "source": "*string*",
  "source_params": {
    "exclude_items": [
      "*string*"
    ],
    "include_items": [
      "*string*"
    ],
    "prefix": "*string*",
    "r2_jurisdiction": "*string*",
    "web_crawler": {
      "parse_options": {
        "include_headers": {},
        "include_images": "*boolean*",
        "specific_sitemaps": [
          "*string*"
        ],
        "use_browser_rendering": "*boolean*"
      },
      "parse_type": "*string*",
      "store_options": {
        "r2_jurisdiction": "*string*",
        "storage_id": "*string*",
        "storage_type": "*string*"
      }
    }
  },
  "status": "*string*",
  "token_id": "*string*",
  "type": "*string*",
  "vectorize_name": "*string*"
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
  "success": "*boolean*"
}
```



## Chat Completions

**POST** `/accounts/{account_id}/ai-search/instances/{id}/chat/completions`



### Responses

#### 200 Returns the chat completions results with retrieved files.

> Data is at `body["result"]`

```json
{
  "choices": [
    {
      "index": "*integer*",
      "message": {
        "content": "*string*",
        "role": "*string*"
      }
    }
  ],
  "chunks": [
    {
      "id": "*string*",
      "item": {
        "key": "*string*",
        "metadata": {},
        "timestamp": "*number*"
      },
      "score": "*number*",
      "scoring_details": {
        "keyword_rank": "*number*",
        "keyword_score": "*number*",
        "vector_rank": "*number*",
        "vector_score": "*number*"
      },
      "text": "*string*",
      "type": "*string*"
    }
  ],
  "id": "*string*",
  "model": "*string*",
  "object": "*string*"
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
  "success": "*boolean*"
}
```



## Search

**POST** `/accounts/{account_id}/ai-search/instances/{id}/search`



### Responses

#### 200 Returns the search results.

> Data is at `body["result"]`

```json
{
  "chunks": [
    {
      "id": "*string*",
      "item": {
        "key": "*string*",
        "metadata": {},
        "timestamp": "*number*"
      },
      "score": "*number*",
      "scoring_details": {
        "keyword_rank": "*number*",
        "keyword_score": "*number*",
        "vector_rank": "*number*",
        "vector_score": "*number*"
      },
      "text": "*string*",
      "type": "*string*"
    }
  ],
  "search_query": "*string*"
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
  "success": "*boolean*"
}
```



## Stats

**GET** `/accounts/{account_id}/ai-search/instances/{id}/stats`



### Responses

#### 200 Returns the AI Search stats.

> Data is at `body["result"]`

```json
{
  "completed": "*integer*",
  "error": "*integer*",
  "file_embed_errors": {},
  "index_source_errors": {},
  "last_activity": "*string*",
  "queued": "*integer*",
  "running": "*integer*",
  "skipped": "*integer*"
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
  "success": "*boolean*"
}
```


