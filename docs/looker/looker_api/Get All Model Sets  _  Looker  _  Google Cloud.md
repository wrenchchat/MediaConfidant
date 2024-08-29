Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Model Sets Version 4.0.24.14 (latest)
Get information about all model sets.

Request GET /model_sets

| Request    | HTTP Request                    |
|------------|---------------------------------|
| query      | HTTP Query                      |
| add_circle | Expand HTTP Query definition... |

query HTTP Query

add_circle Expand HTTP Query definition...

fields string Requested fields.

## Response

| 200: All model sets. 404: Not Found…   | 429: Too Many Requests…   |                                                               |
|----------------------------------------|---------------------------|---------------------------------------------------------------|
| (#200:-all-model-sets.) Datatype       | Description               |                                                               |
| ModelSet  (/looker/docs/refer ence/lookerapi/latest/types/Mo delSet) []                                        |                           |                                                               |
| (array) can                            | lock object               | Operations the current user is able to perform on this object |
| all_access                             | lock boolean              |                                                               |
| built_in                               | lock boolean              |                                                               |
| id                                     | lock string               | Unique Id                                                     |

| models   | string[]    |                       |
|----------|-------------|-----------------------|
| name     | string      | Name of ModelSet      |
| url      | lock string | Link to get this item |

## Examples

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L406)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.