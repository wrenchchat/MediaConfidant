Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

Get All Permissions Version 4.0.24.14 (latest)
Get all supported permissions.

Request GET /permissions

| Datatype   | Description   |
|------------|---------------|
| Request    | HTTP Request  |

Response

| 200: Permission 400: Bad Request…   | 404: Not Found…   | 429: Too Many Requests…                                       |
|-------------------------------------|-------------------|---------------------------------------------------------------|
| (#200:-permission)                  | Datatype          | Description                                                   |
| Permission  (/looker/docs/refer ence/lookerapi/latest/types/Per mission) []                                     |                   |                                                               |
| (array) can                         | lock object       | Operations the current user is able to perform on this object |
| permission                          | lock string       | Permission symbol                                             |
| parent                              | lock string       | Dependency parent symbol                                      |
| description                         | lock string       | Description                                                   |

# Examples

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L423)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License
 (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies
 (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.