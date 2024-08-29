Note that you are viewing Looker documentation. For Looker Studio documentation, visit https://support.google.com/looker-studio (https://support.google.com/looker-studio).

# Get All Legacy Features

Version 4.0.24.14 (latest)
Get all legacy features.

Calls to this endpoint may be denied by Looker (Google Cloud core)
 (https://cloud.google.com/looker/docs/r/looker-core/overview).

Request GET /legacy_features

| Datatype   | Description   |
|------------|---------------|
| Request    | HTTP Request  |

Response

| 200: Legacy Feature 400: Bad Request…   | 403: Permission Denied…   | 404: Not Found…                                               |
|-----------------------------------------|---------------------------|---------------------------------------------------------------|
| (#200:-legacy-feature)                  | Datatype                  | Description                                                   |
| LegacyFeature  (/looker/docs/refer ence/lookerapi/latest/types/Leg acyFeature) []                                         |                           |                                                               |
| (array) can                             | lock object               | Operations the current user is able to perform on this object |
| id                                      | lock string               | Unique Id                                                     |
| name                                    | lock string               | Name                                                          |

| description                                      | lock string                                                                         | Description                                                                          |
|--------------------------------------------------|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|
| enabled_locally                                  | boolean                                                                             | Whether this feature has been enabled by a user                                      |
| enabled                                          | lock boolean                                                                        | Whether this feature is currently enabled Looker version where this feature became a |
| disallowed_as_of_versionlock string              | legacy feature Looker version where this feature will be                            |                                                                                      |
| disable_on_upgrade_to_versionlock string         | automatically disabled                                                              |                                                                                      |
| Future Looker version where this feature will be |                                                                                     |                                                                                      |
| end_of_life_versionlock string                   | removed                                                                             |                                                                                      |
| documentation_urllock string                     | URL for documentation about this feature Approximate date that this feature will be |                                                                                      |
| approximate_disable_datelock string              | automatically disabled. Approximate date that this feature will be                  |                                                                                      |
| approximate_end_of_life_datelock string          | removed.                                                                            |                                                                                      |
| Whether this legacy feature may have been        |                                                                                     |                                                                                      |
| has_disabled_on_upgradelock boolean              | automatically disabled when upgrading to the current version.                       |                                                                                      |

## Examples

```
Kotlin
      
    (#kotlin)
      Swift (#swift)

```

https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt
 (https://github.com/looker-open-source/sdk-codegen/blob/main/kotlin/src/test/TestMethods.kt\#L372)
Except as otherwise noted, the content of this page is licensed under the Creative Commons Attribution 4.0 License
 (https://creativecommons.org/licenses/by/4.0/), and code samples are licensed under the Apache 2.0 License (https://www.apache.org/licenses/LICENSE-2.0). For details, see the Google Developers Site Policies (https://developers.google.com/site-policies). Java is a registered trademark of Oracle and/or its affiliates.

Last updated 2024-08-16 UTC.