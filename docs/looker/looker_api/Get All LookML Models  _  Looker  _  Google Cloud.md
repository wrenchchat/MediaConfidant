Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Lookml Models

Version 4.0.24.14 (latest)
Get information about all lookml models.

Request

| GET /lookml_models   | Datatype                        | Description                                                                                            |
|----------------------|---------------------------------|--------------------------------------------------------------------------------------------------------|
| Request              | HTTP Request                    |                                                                                                        |
| query                | HTTP Query                      |                                                                                                        |
| add_circle           | Expand HTTP Query definition... |                                                                                                        |
| fields               | string                          | Requested fields.                                                                                      |
| limit                | integer                         | Number of results to return. (can be used with offset) Number of results to skip before returning any. |
| offset               | integer                         | (Defaults to 0 if not set when limit is used)                                                          |

Response

| 200: LookML Model 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|---------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-lookml-model)                  | Datatype          | Description                                                   |
| LookmlModel  (/looker/docs/refer ence/lookerapi/latest/types/Lo okmlModel) []                                       |                   |                                                               |
| (array) can                           | lock object       | Operations the current user is able to perform on this object |

allowed_db_connection_names string[]
LookmlModelNav explores

Explore

 (/looker/docs/refer

ence/lookerapi/latest/types/Lo

okmlModelNavExpl ore)

[]

add_circle Expand LookmlModelNavExplore definition...

name lock string Name of the explore description lock string Description for the explore

label lock string Label for the explore

hidden lock boolean Is this explore marked as hidden group_label lock string Label used to group explores in the navigation menus

| add_circle               | Expand LookmlModelNavExplore definition...   |                                                                 |
|--------------------------|----------------------------------------------|-----------------------------------------------------------------|
| name                     | lock string                                  | Name of the explore                                             |
| description              | lock string                                  | Description for the explore                                     |
| label                    | lock string                                  | Label for the explore                                           |
| hidden                   | lock boolean                                 | Is this explore marked as hidden                                |
| group_label              | lock string                                  | Label used to group explores in the navigation menus            |
| has_content              | lock boolean                                 | Does this model declaration have have lookml content?           |
| label                    | lock string                                  | UI-friendly name for this model                                 |
| name                     | string                                       | Name of the model. Also used as the unique identifier           |
| project_name             | string                                       | Name of project containing the model                            |
| unlimited_db_connections | boolean                                      | Is this model allowed to use all current and future connections |

## Examples

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L387)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.