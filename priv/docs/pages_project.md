# Pages Project

## Create project

**POST** `/accounts/{account_id}/pages/projects`

Create a new project.


## Get projects

**GET** `/accounts/{account_id}/pages/projects`

Fetch a list of all user projects.


## Update project

**PATCH** `/accounts/{account_id}/pages/projects/{project_name}`

Set new attributes for an existing project. Modify environment variables. To delete an environment variable, set the key to null.


## Get project

**GET** `/accounts/{account_id}/pages/projects/{project_name}`

Fetch a project by name.


## Delete project

**DELETE** `/accounts/{account_id}/pages/projects/{project_name}`

Delete a project by name.

