Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Workspaces Version 4.0.24.14 (latest)
Get All Workspaces Returns all workspaces available to the calling user.

Request GET /workspaces

| Datatype   | Description   |
|------------|---------------|
| Request    | HTTP Request  |

Response

| 200: Workspace 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                                                                        |
|------------------------------------|-------------------|----------------------------------------------------------------------------------------------------------------|
| (#200:-workspace)                  | Datatype          | Description                                                                                                    |
| Workspace  (/looker/docs/refer ence/lookerapi/latest/types/Wo rkspace) []                                    |                   |                                                                                                                |
| (array) can                        | lock object       | Operations the current user is able to perform on this object The unique id of this user workspace. Predefined |
| id                                 | lock string       | workspace ids include "production" and "dev"                                                                   |

Project
 (/looker/docs/refer ence/lookerapi/latest/types/Pro ject)
[]
add_circle Expand Project definition...

projects

| add_circle                                       | Expand Project definition...   |                                                                                                                                                 |
|--------------------------------------------------|--------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| can                                              | lock object                    | Operations the current user is able to perform on this object                                                                                   |
| id                                               | lock string                    | Project Id                                                                                                                                      |
| name                                             | string                         | Project display name                                                                                                                            |
| uses_git                                         | lock boolean                   | If true the project is configured with a git repository                                                                                         |
| git_remote_url                                   | string                         | Git remote repository url Git username for HTTPS authentication. (For                                                                           |
| git_username                                     | string                         | production only, if using user attributes.) (Write-Only) Git password for HTTPS authentication.                                                 |
| git_password                                     | string                         | (For production only, if using user attributes.) Git production branch name. Defaults to                                                        |
| git_production_branch_name                       | string                         | master. Supported only in Looker 21.0 and higher.                                                                                               |
| use_git_cookie_auth                              | boolean                        | If true, the project uses a git cookie for authentication. User attribute name for username in peruser HTTPS authentication.                                                                                                                                                 |
| git_username_user_attribute                      | string                         | User attribute name for password in peruser HTTPS authentication.                                                                                                                                                 |
| git_password_user_attribute                      | string                         |                                                                                                                                                 |
| git_service_name                                 | string                         | Name of the git service provider Port that HTTP(S) application server is                                                                        |
| git_application_server_http_port                 | integer                        | running on (for PRs, file browsing, etc.) Scheme that is running on application                                                                 |
| git_application_server_http_scheme               | string                         | server (for PRs, file browsing, etc.)                                                                                                           |
| (Write-Only) Optional secret token with which to |                                |                                                                                                                                                 |
| deploy_secret                                    | string                         | authenticate requests to the webhook deploy endpoint. If not set, endpoint is unauthenticated. (Write-Only) When true, unsets the deploy secret |
| unset_deploy_secret                              | boolean                        | to allow unauthenticated access to the webhook deploy endpoint.                                                                                 |

| The git pull request policy for this project. Valid                                               |              |                                                                                                          |
|---------------------------------------------------------------------------------------------------|--------------|----------------------------------------------------------------------------------------------------------|
| pull_request_mode                                                                                 | string       | values are: "off", "links", "recommended", "required". Validation policy: If true, the project must pass |
| validation_required                                                                               | boolean      | validation checks before project changes can be committed to the git repository                          |
| git_release_mgmt_enabled                                                                          | boolean      | If true, advanced git release management is enabled for this project                                     |
| Validation policy: If true, the project can be committed with warnings when `validation_required` |              |                                                                                                          |
| allow_warnings                                                                                    | boolean      | is true. (`allow_warnings` does nothing if `validation_required` is false).                              |
| is_example                                                                                        | lock boolean | If true the project is an example project and cannot be modified                                         |
| dependency_status                                                                                 | string       | Status of dependencies in your manifest & lockfile                                                       |

## Examples

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L533)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.