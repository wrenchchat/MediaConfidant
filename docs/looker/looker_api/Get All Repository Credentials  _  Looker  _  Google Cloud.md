Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Repository Credentials Version 4.0.24.14 (latest)
Get all Repository Credentials for a project root_project_id is required.

Request GET /projects/{root_project_id}/credentials

| GET /projects/{root_project_id}/credentials Datatype Description Request HTTP Request path HTTP Path add_circle Expand HTTP Path definition... root_project_id string Root Project Id   |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

Response

| 200: Repository Credential 400: Bad Request…   | 404: Not Found…   | 429: Too Many Reque   |
|------------------------------------------------|-------------------|-----------------------|
| (#200:-repository-credential) Datatype         | Description       |                       |
| RepositoryCreden tial  (/looker/docs/refer ence/lookerapi/latest/types/Re positoryCredential) []                                                |                   |                       |
| (array)                                        |                   |                       |

| can             | lock object   | Operations the current user is able to perform on this object        |
|-----------------|---------------|----------------------------------------------------------------------|
| id              | lock string   | Unique Id                                                            |
| root_project_id | lock string   | Root project Id                                                      |
| remote_url      | lock string   | Git remote repository url                                            |
| git_username    | string        | Git username for HTTPS authentication.                               |
| git_password    | string        | (Write-Only) Git password for HTTPS authentication.                  |
| ssh_public_key  | string        | Public deploy key for SSH authentication.                            |
| is_configured   | lock boolean  | Whether the credentials have been configured for the Git Repository. |

Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.