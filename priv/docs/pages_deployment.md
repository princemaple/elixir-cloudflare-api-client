# Pages Deployment

## Create deployment

**POST** `/accounts/{account_id}/pages/projects/{project_name}/deployments`

Start a new deployment from production. The repository and account must have already been authorized on the Cloudflare Pages dashboard.

### Responses

#### 200 Create deployment response.

> Data is at `body["result"]`

```json
{
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
  "stages": [
    {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    }
  ],
  "url": "*string*",
  "uses_functions": "*boolean*"
}
```

#### 4XX Create deployment response failure.

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



## Get deployments

**GET** `/accounts/{account_id}/pages/projects/{project_name}/deployments`

Fetch a list of project deployments.

### Responses

#### 200 Get deployments response.

> Data is at `body["result"]`

```json
[
  {
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
  }
]
```

#### 4XX Get deployments response failure.

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



## Get deployment info

**GET** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}`

Fetch information about a deployment.

### Responses

#### 200 Get deployment info response.

> Data is at `body["result"]`

```json
{
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
  "stages": [
    {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    }
  ],
  "url": "*string*",
  "uses_functions": "*boolean*"
}
```

#### 4XX Get deployment info response failure.

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



## Delete deployment

**DELETE** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}`

Delete a deployment.

### Responses

#### 200 Delete deployment response.

> Data is at `body["result"]`

```json
{}
```

#### 4XX Delete deployment response failure.

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



## Get deployment logs

**GET** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}/history/logs`

Fetch deployment logs for a project.

### Responses

#### 200 Get deployment logs response.

> Data is at `body["result"]`

```json
{
  "data": [
    {
      "line": "*string*",
      "ts": "*string*"
    }
  ],
  "includes_container_logs": "*boolean*",
  "total": "*integer*"
}
```

#### 4XX Get deployment logs response failure.

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



## Retry deployment

**POST** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}/retry`

Retry a previous deployment.

### Responses

#### 200 Retry deployment response.

> Data is at `body["result"]`

```json
{
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
  "stages": [
    {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    }
  ],
  "url": "*string*",
  "uses_functions": "*boolean*"
}
```

#### 4XX Retry deployment response failure.

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



## Rollback deployment

**POST** `/accounts/{account_id}/pages/projects/{project_name}/deployments/{deployment_id}/rollback`

Rollback the production deployment to a previous deployment. You can only rollback to succesful builds on production.

### Responses

#### 200 Rollback deployment response.

> Data is at `body["result"]`

```json
{
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
  "stages": [
    {
      "ended_on": "*string*",
      "name": "*string*",
      "started_on": "*string*",
      "status": "*string*"
    }
  ],
  "url": "*string*",
  "uses_functions": "*boolean*"
}
```

#### 4XX Rollback deployment response failure.

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


