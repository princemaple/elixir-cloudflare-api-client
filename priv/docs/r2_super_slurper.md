# R2 Super Slurper

## Create a job

**POST** `/accounts/{account_id}/slurper/jobs`




## List jobs

**GET** `/accounts/{account_id}/slurper/jobs`




## Abort all jobs

**PUT** `/accounts/{account_id}/slurper/jobs/abortAll`




## Get job details

**GET** `/accounts/{account_id}/slurper/jobs/{job_id}`




## Abort a job

**PUT** `/accounts/{account_id}/slurper/jobs/{job_id}/abort`




## Get job logs

**GET** `/accounts/{account_id}/slurper/jobs/{job_id}/logs`




## Pause a job

**PUT** `/accounts/{account_id}/slurper/jobs/{job_id}/pause`




## Get job progress

**GET** `/accounts/{account_id}/slurper/jobs/{job_id}/progress`




## Resume a job

**PUT** `/accounts/{account_id}/slurper/jobs/{job_id}/resume`




## Check source connectivity

**PUT** `/accounts/{account_id}/slurper/source/connectivity-precheck`

Check whether tokens are valid against the source bucket


## Check target connectivity

**PUT** `/accounts/{account_id}/slurper/target/connectivity-precheck`

Check whether tokens are valid against the target bucket

