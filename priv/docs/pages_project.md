# Pages Project

## Create project

**POST** `/accounts/{account_id}/pages/projects`

Create a new project.

### Responses

#### 200 Create project response.

> Data is at `body["result"]`

```json
{
  "build_config": {
    "build_caching": "*boolean*",
    "build_command": "*string*",
    "destination_dir": "*string*",
    "root_dir": "*string*",
    "web_analytics_tag": "*string*",
    "web_analytics_token": "*string*"
  },
  "canonical_deployment": {
    "aliases": [
      "*string*"
    ],
    "build_config": {
      "build_caching": "*boolean*",
      "build_command": "*string*",
      "destination_dir": "*string*",
      "root_dir": "*string*",
      "web_analytics_tag": "*string*",
      "web_analytics_token": "*string*"
    },
    "created_on": "*string*",
    "deployment_trigger": {
      "metadata": {
        "branch": "*string*",
        "commit_dirty": "*boolean*",
        "commit_hash": "*string*",
        "commit_message": "*string*"
      },
      "type": "*string*"
    },
    "env_vars": {},
    "environment": "*string*",
    "id": "*string*",
    "is_skipped": "*boolean*",
    "latest_stage": {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    },
    "modified_on": "*string*",
    "project_id": "*string*",
    "project_name": "*string*",
    "short_id": "*string*",
    "source": {
      "config": {
        "deployments_enabled": null,
        "owner": null,
        "owner_id": null,
        "path_excludes": null,
        "path_includes": null,
        "pr_comments_enabled": null,
        "preview_branch_excludes": null,
        "preview_branch_includes": null,
        "preview_deployment_setting": null,
        "production_branch": null,
        "production_deployments_enabled": null,
        "repo_id": null,
        "repo_name": null
      },
      "type": "*string*"
    },
    "stages": [
      {
        "ended_on": null,
        "name": null,
        "started_on": null,
        "status": null
      }
    ],
    "url": "*string*",
    "uses_functions": "*boolean*"
  },
  "created_on": "*string*",
  "deployment_configs": {
    "preview": {
      "ai_bindings": {},
      "always_use_latest_compatibility_date": "*boolean*",
      "analytics_engine_datasets": {},
      "browsers": {},
      "build_image_major_version": "*integer*",
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "d1_databases": {},
      "durable_object_namespaces": {},
      "env_vars": {},
      "fail_open": "*boolean*",
      "hyperdrive_bindings": {},
      "kv_namespaces": {},
      "limits": {
        "cpu_ms": "*integer*"
      },
      "mtls_certificates": {},
      "placement": {
        "mode": "*string*"
      },
      "queue_producers": {},
      "r2_buckets": {},
      "services": {},
      "usage_model": "*string*",
      "vectorize_bindings": {},
      "wrangler_config_hash": "*string*"
    },
    "production": {
      "ai_bindings": {},
      "always_use_latest_compatibility_date": "*boolean*",
      "analytics_engine_datasets": {},
      "browsers": {},
      "build_image_major_version": "*integer*",
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "d1_databases": {},
      "durable_object_namespaces": {},
      "env_vars": {},
      "fail_open": "*boolean*",
      "hyperdrive_bindings": {},
      "kv_namespaces": {},
      "limits": {
        "cpu_ms": "*integer*"
      },
      "mtls_certificates": {},
      "placement": {
        "mode": "*string*"
      },
      "queue_producers": {},
      "r2_buckets": {},
      "services": {},
      "usage_model": "*string*",
      "vectorize_bindings": {},
      "wrangler_config_hash": "*string*"
    }
  },
  "domains": [
    "*string*"
  ],
  "framework": "*string*",
  "framework_version": "*string*",
  "id": "*string*",
  "latest_deployment": {
    "aliases": [
      "*string*"
    ],
    "build_config": {
      "build_caching": "*boolean*",
      "build_command": "*string*",
      "destination_dir": "*string*",
      "root_dir": "*string*",
      "web_analytics_tag": "*string*",
      "web_analytics_token": "*string*"
    },
    "created_on": "*string*",
    "deployment_trigger": {
      "metadata": {
        "branch": "*string*",
        "commit_dirty": "*boolean*",
        "commit_hash": "*string*",
        "commit_message": "*string*"
      },
      "type": "*string*"
    },
    "env_vars": {},
    "environment": "*string*",
    "id": "*string*",
    "is_skipped": "*boolean*",
    "latest_stage": {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    },
    "modified_on": "*string*",
    "project_id": "*string*",
    "project_name": "*string*",
    "short_id": "*string*",
    "source": {
      "config": {
        "deployments_enabled": null,
        "owner": null,
        "owner_id": null,
        "path_excludes": null,
        "path_includes": null,
        "pr_comments_enabled": null,
        "preview_branch_excludes": null,
        "preview_branch_includes": null,
        "preview_deployment_setting": null,
        "production_branch": null,
        "production_deployments_enabled": null,
        "repo_id": null,
        "repo_name": null
      },
      "type": "*string*"
    },
    "stages": [
      {
        "ended_on": null,
        "name": null,
        "started_on": null,
        "status": null
      }
    ],
    "url": "*string*",
    "uses_functions": "*boolean*"
  },
  "name": "*string*",
  "preview_script_name": "*string*",
  "production_branch": "*string*",
  "production_script_name": "*string*",
  "source": {
    "config": {
      "deployments_enabled": "*boolean*",
      "owner": "*string*",
      "owner_id": "*string*",
      "path_excludes": [
        "*string*"
      ],
      "path_includes": [
        "*string*"
      ],
      "pr_comments_enabled": "*boolean*",
      "preview_branch_excludes": [
        "*string*"
      ],
      "preview_branch_includes": [
        "*string*"
      ],
      "preview_deployment_setting": "*string*",
      "production_branch": "*string*",
      "production_deployments_enabled": "*boolean*",
      "repo_id": "*string*",
      "repo_name": "*string*"
    },
    "type": "*string*"
  },
  "subdomain": "*string*",
  "uses_functions": "*boolean*"
}
```

#### 4XX Create project response failure.

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



## Get projects

**GET** `/accounts/{account_id}/pages/projects`

Fetch a list of all user projects.

### Responses

#### 200 Get projects response.

> Data is at `body["result"]`

```json
[
  {
    "build_config": {
      "build_caching": "*boolean*",
      "build_command": "*string*",
      "destination_dir": "*string*",
      "root_dir": "*string*",
      "web_analytics_tag": "*string*",
      "web_analytics_token": "*string*"
    },
    "canonical_deployment": {
      "aliases": [
        null
      ],
      "build_config": null,
      "created_on": "*string*",
      "deployment_trigger": {
        "metadata": null,
        "type": null
      },
      "env_vars": null,
      "environment": "*string*",
      "id": "*string*",
      "is_skipped": "*boolean*",
      "latest_stage": null,
      "modified_on": "*string*",
      "project_id": "*string*",
      "project_name": null,
      "short_id": "*string*",
      "source": null,
      "stages": [
        null
      ],
      "url": "*string*",
      "uses_functions": "*boolean*"
    },
    "created_on": "*string*",
    "deployment_configs": {
      "preview": null,
      "production": null
    },
    "domains": [
      "*string*"
    ],
    "framework": "*string*",
    "framework_version": "*string*",
    "id": "*string*",
    "latest_deployment": {
      "aliases": [
        null
      ],
      "build_config": null,
      "created_on": "*string*",
      "deployment_trigger": {
        "metadata": null,
        "type": null
      },
      "env_vars": null,
      "environment": "*string*",
      "id": "*string*",
      "is_skipped": "*boolean*",
      "latest_stage": null,
      "modified_on": "*string*",
      "project_id": "*string*",
      "project_name": null,
      "short_id": "*string*",
      "source": null,
      "stages": [
        null
      ],
      "url": "*string*",
      "uses_functions": "*boolean*"
    },
    "name": "*string*",
    "preview_script_name": "*string*",
    "production_branch": "*string*",
    "production_script_name": "*string*",
    "source": {
      "config": {
        "deployments_enabled": null,
        "owner": null,
        "owner_id": null,
        "path_excludes": null,
        "path_includes": null,
        "pr_comments_enabled": null,
        "preview_branch_excludes": null,
        "preview_branch_includes": null,
        "preview_deployment_setting": null,
        "production_branch": null,
        "production_deployments_enabled": null,
        "repo_id": null,
        "repo_name": null
      },
      "type": "*string*"
    },
    "subdomain": "*string*",
    "uses_functions": "*boolean*"
  }
]
```

#### 4XX Get projects response failure.

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



## Update project

**PATCH** `/accounts/{account_id}/pages/projects/{project_name}`

Set new attributes for an existing project. Modify environment variables. To delete an environment variable, set the key to null.

### Responses

#### 200 Update project response.

> Data is at `body["result"]`

```json
{
  "build_config": {
    "build_caching": "*boolean*",
    "build_command": "*string*",
    "destination_dir": "*string*",
    "root_dir": "*string*",
    "web_analytics_tag": "*string*",
    "web_analytics_token": "*string*"
  },
  "canonical_deployment": {
    "aliases": [
      "*string*"
    ],
    "build_config": {
      "build_caching": "*boolean*",
      "build_command": "*string*",
      "destination_dir": "*string*",
      "root_dir": "*string*",
      "web_analytics_tag": "*string*",
      "web_analytics_token": "*string*"
    },
    "created_on": "*string*",
    "deployment_trigger": {
      "metadata": {
        "branch": "*string*",
        "commit_dirty": "*boolean*",
        "commit_hash": "*string*",
        "commit_message": "*string*"
      },
      "type": "*string*"
    },
    "env_vars": {},
    "environment": "*string*",
    "id": "*string*",
    "is_skipped": "*boolean*",
    "latest_stage": {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    },
    "modified_on": "*string*",
    "project_id": "*string*",
    "project_name": "*string*",
    "short_id": "*string*",
    "source": {
      "config": {
        "deployments_enabled": null,
        "owner": null,
        "owner_id": null,
        "path_excludes": null,
        "path_includes": null,
        "pr_comments_enabled": null,
        "preview_branch_excludes": null,
        "preview_branch_includes": null,
        "preview_deployment_setting": null,
        "production_branch": null,
        "production_deployments_enabled": null,
        "repo_id": null,
        "repo_name": null
      },
      "type": "*string*"
    },
    "stages": [
      {
        "ended_on": null,
        "name": null,
        "started_on": null,
        "status": null
      }
    ],
    "url": "*string*",
    "uses_functions": "*boolean*"
  },
  "created_on": "*string*",
  "deployment_configs": {
    "preview": {
      "ai_bindings": {},
      "always_use_latest_compatibility_date": "*boolean*",
      "analytics_engine_datasets": {},
      "browsers": {},
      "build_image_major_version": "*integer*",
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "d1_databases": {},
      "durable_object_namespaces": {},
      "env_vars": {},
      "fail_open": "*boolean*",
      "hyperdrive_bindings": {},
      "kv_namespaces": {},
      "limits": {
        "cpu_ms": "*integer*"
      },
      "mtls_certificates": {},
      "placement": {
        "mode": "*string*"
      },
      "queue_producers": {},
      "r2_buckets": {},
      "services": {},
      "usage_model": "*string*",
      "vectorize_bindings": {},
      "wrangler_config_hash": "*string*"
    },
    "production": {
      "ai_bindings": {},
      "always_use_latest_compatibility_date": "*boolean*",
      "analytics_engine_datasets": {},
      "browsers": {},
      "build_image_major_version": "*integer*",
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "d1_databases": {},
      "durable_object_namespaces": {},
      "env_vars": {},
      "fail_open": "*boolean*",
      "hyperdrive_bindings": {},
      "kv_namespaces": {},
      "limits": {
        "cpu_ms": "*integer*"
      },
      "mtls_certificates": {},
      "placement": {
        "mode": "*string*"
      },
      "queue_producers": {},
      "r2_buckets": {},
      "services": {},
      "usage_model": "*string*",
      "vectorize_bindings": {},
      "wrangler_config_hash": "*string*"
    }
  },
  "domains": [
    "*string*"
  ],
  "framework": "*string*",
  "framework_version": "*string*",
  "id": "*string*",
  "latest_deployment": {
    "aliases": [
      "*string*"
    ],
    "build_config": {
      "build_caching": "*boolean*",
      "build_command": "*string*",
      "destination_dir": "*string*",
      "root_dir": "*string*",
      "web_analytics_tag": "*string*",
      "web_analytics_token": "*string*"
    },
    "created_on": "*string*",
    "deployment_trigger": {
      "metadata": {
        "branch": "*string*",
        "commit_dirty": "*boolean*",
        "commit_hash": "*string*",
        "commit_message": "*string*"
      },
      "type": "*string*"
    },
    "env_vars": {},
    "environment": "*string*",
    "id": "*string*",
    "is_skipped": "*boolean*",
    "latest_stage": {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    },
    "modified_on": "*string*",
    "project_id": "*string*",
    "project_name": "*string*",
    "short_id": "*string*",
    "source": {
      "config": {
        "deployments_enabled": null,
        "owner": null,
        "owner_id": null,
        "path_excludes": null,
        "path_includes": null,
        "pr_comments_enabled": null,
        "preview_branch_excludes": null,
        "preview_branch_includes": null,
        "preview_deployment_setting": null,
        "production_branch": null,
        "production_deployments_enabled": null,
        "repo_id": null,
        "repo_name": null
      },
      "type": "*string*"
    },
    "stages": [
      {
        "ended_on": null,
        "name": null,
        "started_on": null,
        "status": null
      }
    ],
    "url": "*string*",
    "uses_functions": "*boolean*"
  },
  "name": "*string*",
  "preview_script_name": "*string*",
  "production_branch": "*string*",
  "production_script_name": "*string*",
  "source": {
    "config": {
      "deployments_enabled": "*boolean*",
      "owner": "*string*",
      "owner_id": "*string*",
      "path_excludes": [
        "*string*"
      ],
      "path_includes": [
        "*string*"
      ],
      "pr_comments_enabled": "*boolean*",
      "preview_branch_excludes": [
        "*string*"
      ],
      "preview_branch_includes": [
        "*string*"
      ],
      "preview_deployment_setting": "*string*",
      "production_branch": "*string*",
      "production_deployments_enabled": "*boolean*",
      "repo_id": "*string*",
      "repo_name": "*string*"
    },
    "type": "*string*"
  },
  "subdomain": "*string*",
  "uses_functions": "*boolean*"
}
```

#### 4XX Update project response failure.

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



## Get project

**GET** `/accounts/{account_id}/pages/projects/{project_name}`

Fetch a project by name.

### Responses

#### 200 Get project response.

> Data is at `body["result"]`

```json
{
  "build_config": {
    "build_caching": "*boolean*",
    "build_command": "*string*",
    "destination_dir": "*string*",
    "root_dir": "*string*",
    "web_analytics_tag": "*string*",
    "web_analytics_token": "*string*"
  },
  "canonical_deployment": {
    "aliases": [
      "*string*"
    ],
    "build_config": {
      "build_caching": "*boolean*",
      "build_command": "*string*",
      "destination_dir": "*string*",
      "root_dir": "*string*",
      "web_analytics_tag": "*string*",
      "web_analytics_token": "*string*"
    },
    "created_on": "*string*",
    "deployment_trigger": {
      "metadata": {
        "branch": "*string*",
        "commit_dirty": "*boolean*",
        "commit_hash": "*string*",
        "commit_message": "*string*"
      },
      "type": "*string*"
    },
    "env_vars": {},
    "environment": "*string*",
    "id": "*string*",
    "is_skipped": "*boolean*",
    "latest_stage": {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    },
    "modified_on": "*string*",
    "project_id": "*string*",
    "project_name": "*string*",
    "short_id": "*string*",
    "source": {
      "config": {
        "deployments_enabled": null,
        "owner": null,
        "owner_id": null,
        "path_excludes": null,
        "path_includes": null,
        "pr_comments_enabled": null,
        "preview_branch_excludes": null,
        "preview_branch_includes": null,
        "preview_deployment_setting": null,
        "production_branch": null,
        "production_deployments_enabled": null,
        "repo_id": null,
        "repo_name": null
      },
      "type": "*string*"
    },
    "stages": [
      {
        "ended_on": null,
        "name": null,
        "started_on": null,
        "status": null
      }
    ],
    "url": "*string*",
    "uses_functions": "*boolean*"
  },
  "created_on": "*string*",
  "deployment_configs": {
    "preview": {
      "ai_bindings": {},
      "always_use_latest_compatibility_date": "*boolean*",
      "analytics_engine_datasets": {},
      "browsers": {},
      "build_image_major_version": "*integer*",
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "d1_databases": {},
      "durable_object_namespaces": {},
      "env_vars": {},
      "fail_open": "*boolean*",
      "hyperdrive_bindings": {},
      "kv_namespaces": {},
      "limits": {
        "cpu_ms": "*integer*"
      },
      "mtls_certificates": {},
      "placement": {
        "mode": "*string*"
      },
      "queue_producers": {},
      "r2_buckets": {},
      "services": {},
      "usage_model": "*string*",
      "vectorize_bindings": {},
      "wrangler_config_hash": "*string*"
    },
    "production": {
      "ai_bindings": {},
      "always_use_latest_compatibility_date": "*boolean*",
      "analytics_engine_datasets": {},
      "browsers": {},
      "build_image_major_version": "*integer*",
      "compatibility_date": "*string*",
      "compatibility_flags": [
        "*string*"
      ],
      "d1_databases": {},
      "durable_object_namespaces": {},
      "env_vars": {},
      "fail_open": "*boolean*",
      "hyperdrive_bindings": {},
      "kv_namespaces": {},
      "limits": {
        "cpu_ms": "*integer*"
      },
      "mtls_certificates": {},
      "placement": {
        "mode": "*string*"
      },
      "queue_producers": {},
      "r2_buckets": {},
      "services": {},
      "usage_model": "*string*",
      "vectorize_bindings": {},
      "wrangler_config_hash": "*string*"
    }
  },
  "domains": [
    "*string*"
  ],
  "framework": "*string*",
  "framework_version": "*string*",
  "id": "*string*",
  "latest_deployment": {
    "aliases": [
      "*string*"
    ],
    "build_config": {
      "build_caching": "*boolean*",
      "build_command": "*string*",
      "destination_dir": "*string*",
      "root_dir": "*string*",
      "web_analytics_tag": "*string*",
      "web_analytics_token": "*string*"
    },
    "created_on": "*string*",
    "deployment_trigger": {
      "metadata": {
        "branch": "*string*",
        "commit_dirty": "*boolean*",
        "commit_hash": "*string*",
        "commit_message": "*string*"
      },
      "type": "*string*"
    },
    "env_vars": {},
    "environment": "*string*",
    "id": "*string*",
    "is_skipped": "*boolean*",
    "latest_stage": {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    },
    "modified_on": "*string*",
    "project_id": "*string*",
    "project_name": "*string*",
    "short_id": "*string*",
    "source": {
      "config": {
        "deployments_enabled": null,
        "owner": null,
        "owner_id": null,
        "path_excludes": null,
        "path_includes": null,
        "pr_comments_enabled": null,
        "preview_branch_excludes": null,
        "preview_branch_includes": null,
        "preview_deployment_setting": null,
        "production_branch": null,
        "production_deployments_enabled": null,
        "repo_id": null,
        "repo_name": null
      },
      "type": "*string*"
    },
    "stages": [
      {
        "ended_on": null,
        "name": null,
        "started_on": null,
        "status": null
      }
    ],
    "url": "*string*",
    "uses_functions": "*boolean*"
  },
  "name": "*string*",
  "preview_script_name": "*string*",
  "production_branch": "*string*",
  "production_script_name": "*string*",
  "source": {
    "config": {
      "deployments_enabled": "*boolean*",
      "owner": "*string*",
      "owner_id": "*string*",
      "path_excludes": [
        "*string*"
      ],
      "path_includes": [
        "*string*"
      ],
      "pr_comments_enabled": "*boolean*",
      "preview_branch_excludes": [
        "*string*"
      ],
      "preview_branch_includes": [
        "*string*"
      ],
      "preview_deployment_setting": "*string*",
      "production_branch": "*string*",
      "production_deployments_enabled": "*boolean*",
      "repo_id": "*string*",
      "repo_name": "*string*"
    },
    "type": "*string*"
  },
  "subdomain": "*string*",
  "uses_functions": "*boolean*"
}
```

#### 4XX Get project response failure.

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



## Delete project

**DELETE** `/accounts/{account_id}/pages/projects/{project_name}`

Delete a project by name.

### Responses

#### 200 Delete project response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete project response failure.

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


